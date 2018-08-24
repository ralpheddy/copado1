public class A_Phone_Test {

    public A_Phone_Test(ApexPages.StandardController controller) {

    }


        // ReversePhone rev = new ReversePhone ();
        // tempuriOrg tempuri = new tempuriOrg ();
  

        public String getMyCity() {
		string city = 'City...';
                tempuriOrg.StandardReverseLookupSoap rev = new tempuriOrg.StandardReverseLookupSoap();

		ReversePhone.UnregisteredUser u = new ReversePhone.UnregisteredUser();
		u.EmailAddress = 'ralph@lettucehead.com';

		rev.LicenseInfo.UnregisteredUser = u; // UnregisteredUser.EmailAddress = 'ralph@lettucehead.com';

		
                // tempuriOrg.ArrayOfListing aol = rev.Lookup('415-383-6331');

                // String city = aol.Listing[0].City;
                return city;
        }

        public String getMyTime() {
                AtomicClock.AtomicClockWSSoap ac = new AtomicClock.AtomicClockWSSoap();
                String result = ac.GetUniversalTime();               
                return result;

        }
/*
  ConvertWeight.ConvertWeightsSoap  cws = new ConvertWeight.ConvertWeightsSoap(); 

  Double weight = 100.00;
  ConvertWeight.WeightUnit fromunit;
  ConvertWeight.WeightUnit tounit;
  double d = cws.ConvertWeight(weight, fromunit, tounit);
*/
}