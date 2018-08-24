public class FollowMe2 {
        
        public String currentForm = 'none';

        public Contact getCurrentForm() {
                LIST<Contact> con = [Select id, name From Contact Limit 1];
                return con[0];
        }

        public void ChangeForm(){
                currentForm = 'changed';
        }

        public string getWords() {
                string s = '<div style="background-color:#eeeebb">11111</div>';
                s += '<div style="background-color:#eeeebb"><a href="#" style="color:white">22222</a></div>';
                return s;
        }
}