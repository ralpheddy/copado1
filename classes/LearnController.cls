public class LearnController {

        public String getStatement() {
                return 'Hello!';
        }

        public LIST<Contact> getSomeContacts(){
                return [Select id, name from contact limit 3];
        }
}