public class enrollment {

        Contact member;
        
        public Contact getMember() {   
                if(member == null) member = new Contact();
                return member;
        }

        public Account getGroup() {
                return [select id, name from Account where id='0013000000KKrAb'];
        }

        public LIST<Contact> getContacts() {
                return [select id, firstname, lastname, email, phone from Contact where Accountid='0013000000KKrAb'];
        }

        public PageReference newMemberPage() {
                return Page.NewMember;
        }

        
        public PageReference save() {
		Id accId = '0013000000KKrAb';
                member.accountId = accId;
                insert member;
                return Page.enrollment;
        }
}