//Generated by wsdl2apex

public class tempuriOrg {
    public class StandardReverseLookupSoap {
        public String endpoint_x = 'http://ws.strikeiron.com/RealEDA/reversephone90day/StandardReverseLookup';
        public ReversePhone.SubscriptionInfo SubscriptionInfo;
        public ReversePhone.LicenseInfo LicenseInfo;
        private String SubscriptionInfo_hns = 'SubscriptionInfo=http://ws.strikeiron.com';
        private String LicenseInfo_hns = 'LicenseInfo=http://ws.strikeiron.com';
        private String[] ns_map_type_info = new String[]{'http://ws.strikeiron.com', 'ReversePhone', 'http://tempuri.org/', 'tempuriOrg'};
        public void GetRemainingHits() {
            ReversePhone.GetRemainingHits_element request_x = new ReversePhone.GetRemainingHits_element();
            ReversePhone.GetRemainingHitsResponse_element response_x;
            Map<String, ReversePhone.GetRemainingHitsResponse_element> response_map_x = new Map<String, ReversePhone.GetRemainingHitsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://ws.strikeiron.com/RealEDA/reversephone90day/StandardReverseLookup/GetRemainingHits',
              'http://ws.strikeiron.com',
              'GetRemainingHits',
              'http://ws.strikeiron.com',
              'GetRemainingHitsResponse',
              'ReversePhone.GetRemainingHitsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public tempuriOrg.ArrayOfListing Lookup(String number_x) {
            tempuriOrg.Lookup_element request_x = new tempuriOrg.Lookup_element();
            tempuriOrg.LookupResponse_element response_x;
            request_x.number_x = number_x;
            Map<String, tempuriOrg.LookupResponse_element> response_map_x = new Map<String, tempuriOrg.LookupResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://tempuri.org/Lookup',
              'http://tempuri.org/',
              'Lookup',
              'http://tempuri.org/',
              'LookupResponse',
              'tempuriOrg.LookupResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.LookupResult;
        }
    }
    public class Listing {
        public String LastName;
        public String FirstName;
        public String MiddleName;
        public String HouseNumber;
        public String StreetName;
        public String StreetSuffix;
        public String City;
        public String State;
        public String ZipCode;
        private String[] LastName_type_info = new String[]{'LastName','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] FirstName_type_info = new String[]{'FirstName','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] MiddleName_type_info = new String[]{'MiddleName','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] HouseNumber_type_info = new String[]{'HouseNumber','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] StreetName_type_info = new String[]{'StreetName','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] StreetSuffix_type_info = new String[]{'StreetSuffix','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] City_type_info = new String[]{'City','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] State_type_info = new String[]{'State','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] ZipCode_type_info = new String[]{'ZipCode','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true'};
        private String[] field_order_type_info = new String[]{'LastName','FirstName','MiddleName','HouseNumber','StreetName','StreetSuffix','City','State','ZipCode'};
    }
    public class ArrayOfListing {
        public tempuriOrg.Listing[] Listing;
        private String[] Listing_type_info = new String[]{'Listing','http://tempuri.org/','Listing','0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true'};
        private String[] field_order_type_info = new String[]{'Listing'};
    }
    public class Lookup_element {
        public String number_x;
        private String[] number_x_type_info = new String[]{'number','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true'};
        private String[] field_order_type_info = new String[]{'number_x'};
    }
    public class LookupResponse_element {
        public tempuriOrg.ArrayOfListing LookupResult;
        private String[] LookupResult_type_info = new String[]{'LookupResult','http://tempuri.org/','ArrayOfListing','0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true'};
        private String[] field_order_type_info = new String[]{'LookupResult'};
    }
}