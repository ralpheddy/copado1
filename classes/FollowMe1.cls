public class FollowMe1 {

        public String currentForm = 'none';

        public Contact getCurrentForm() {
                LIST<Contact> con = [Select id, name From Contact Limit 1];
                return con[0];
        }

        public void ChangeForm(){
                currentForm = 'changed';
        }

}