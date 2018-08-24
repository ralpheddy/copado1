public class AccountWithContactGridExtension {

    String StatusText;
    List<Contact> AccContacts;
	Boolean InsertFlag;
    private final Account acct;

    // Constuctor for extending the standard controller
    public AccountWithContactGridExtension(ApexPages.StandardController stdController) {
        this.acct = (Account)stdController.getRecord();
        StatusText = '';
        AccContacts = ContactList();
        InsertFlag = false;
    }

    // Fill list with contacts
    public List<Contact> ContactList(){
        List<Contact> cl;
        try {
           cl = [Select c.id, c.Salutation, c.firstname, c.lastname, c.department, c.email, c.phone,
                c.mobilephone, c.AccountId from Contact c where c.AccountId = :acct.id];
        } catch (QueryException e){
            system.debug(e.getMessage());
            StatusText = e.getMessage();
        }
        return cl;
    }

    // Called from Grid to get List of Contacts
    public List<Contact> getAccContacts () {
        if (InsertFlag){
           AccContacts.add(new Contact(AccountId = acct.id));
           InsertFlag = false;
        }
        return AccContacts;
    }

	// Called from Page to pass values from grid to controller
    public void setAccContacts(List<Contact> ct) {
        AccContacts = ct;
    }

	// Called from Page to get StatusText
    public String getStatusText() {
        return StatusText;
    }
    
    // Called from "Save" Button
    public PageReference saveContacts () {
    	try {
            upsert AccContacts;
        } catch (DMLException e) {
            system.debug(e.getMessage());
            StatusText = e.getMessage();
        }	
        AccContacts = ContactList();
        return null;
    }

	// Called from "Add" Button
    public PageReference addContact () {
        InsertFlag = true;
        return null;
    }
}