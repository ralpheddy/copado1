public class QuickController {

        Contact contact;
        public String PerfectMatchID;
        List<Contact>  matches  = new Contact[]{};
        Case c = new Case();

        
        public Contact getContact(){
                
                if(contact == null){
                        contact = new Contact();
                }
                contact.LastName = '';
                return contact;

        }

        public PageReference console() {
                PageReference consPage = new PageReference('https://na1.salesforce.com/ui/desktop/DesktopPage');
                consPage.setRedirect(true);
                return consPage;

        }


        public PageReference save() {
                
                Boolean perfectMatch = lookForMatch();

                if(perfectMatch)
                {
                        makeCase(perfectMatchID);
                        
                        PageReference pageRef = new PageReference('https://na1.salesforce.com/'+c.Id);
                        pageRef.setRedirect(true);
                        return pageRef;

                } 
                
                Integer HowMany = lookForCloseMatch();
                if(HowMany > 0)
                {
			return Page.ManyMatches;
                }

                else{
                        PageReference pageRef;
                        insert contact; 
                        makeCase(contact.Id);
                        pageRef = new PageReference('https://na1.salesforce.com/'+c.Id);
                        pageRef.setRedirect(true);
                        return pageRef;
                }
        }

        public PageReference getLastSave() {
                PageReference pageRef;

                for(Integer d=0; d<myCons.size(); d++)
                {
                        if(myCons[d].selected)
                        {
                                if(myCons[d].geta().Id == null)
                                {
                                        insert contact; 
                                        makeCase(contact.Id);
                                        pageRef = new PageReference('https://na1.salesforce.com/'+c.Id);
                                        pageRef.setRedirect(true);
                                        return pageRef;
                                }
                                else{
                                        makeCase(myCons[d].geta().Id);
                                        pageRef = new PageReference('https://na1.salesforce.com/'+c.Id);
                                        pageRef.setRedirect(true);
                                        return pageRef;                                 
                                }
                        }
                }
                pageRef.setRedirect(true);
                return pageRef;
        }


        //Looks for a perfect Match based on First Name / Last Name / and Email. Phone was proving to be difficult due to formatting. 
        public Boolean lookForMatch(){

                Contact [] cs = [Select Id from Contact where FirstName = :contact.FirstName and LastName = :contact.LastName and email = :contact.Email];
                                
                if(cs.size() > 0) 
                {
                        perfectMatchID = cs[0].Id;
                        return true;
                }

                return false;

        }

       

        public Integer lookForCloseMatch(){
                matches = [Select Id, FirstName, LastName, Email, Phone, MailingState from Contact where FirstName = :contact.FirstName and LastName = :contact.LastName];
                

                for(Integer k=0; k<matches.size(); k++)
                {
                        myCons.add(new mCon(matches[k]));
                }


                if(matches.size() >0)
                {
                        myCons.add(0,new mCon(contact));
                }
                return myCons.size(); 
        }

        public void makeCase(String id)
        {
                c.Status = 'New';
                c.Origin = 'Phone';
                //c.RecordTypeId = '012300000009jLC';
                c.ContactId = id;
                insert c;
        }
        
        public List<mCon> myCons = new mCon[]{};

        public List<mCon> getMyCons(){ return myCons;}


        public class mCon{
        Contact a;
        boolean selected = false;
        public mCon( Contact adl){a=adl;}
        public boolean getSelected() {return selected;}
        public Contact geta(){ return a; }
        public void setSelected(boolean sb){ selected = sb;}
        }
        

}