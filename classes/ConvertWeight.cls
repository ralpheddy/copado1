//Generated by wsdl2apex

public class ConvertWeight {
    public class ConvertWeightsSoap {
        public String endpoint_x = 'http://www.webservicex.net/ConvertWeight.asmx';
        private String[] ns_map_type_info = new String[]{'http://www.webserviceX.NET/', 'ConvertWeight'};
        public Double ConvertWeight(Double Weight,ConvertWeight.WeightUnit FromUnit,ConvertWeight.WeightUnit ToUnit) {
            ConvertWeight.ConvertWeight_element request_x = new ConvertWeight.ConvertWeight_element();
            ConvertWeight.ConvertWeightResponse_element response_x;
            request_x.Weight = Weight;
            request_x.FromUnit = FromUnit;
            request_x.ToUnit = ToUnit;
            Map<String, ConvertWeight.ConvertWeightResponse_element> response_map_x = new Map<String, ConvertWeight.ConvertWeightResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.webserviceX.NET/ConvertWeight',
              'http://www.webserviceX.NET/',
              'ConvertWeight',
              'http://www.webserviceX.NET/',
              'ConvertWeightResponse',
              'ConvertWeight.ConvertWeightResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.ConvertWeightResult;
        }
    }
    public class ConvertWeightResponse_element {
        public Double ConvertWeightResult;
        private String[] ConvertWeightResult_type_info = new String[]{'ConvertWeightResult','http://www.w3.org/2001/XMLSchema','double','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webserviceX.NET/','true'};
        private String[] field_order_type_info = new String[]{'ConvertWeightResult'};
    }
    public class ConvertWeight_element {
        public Double Weight;
        public ConvertWeight.WeightUnit FromUnit;
        public ConvertWeight.WeightUnit ToUnit;
        private String[] Weight_type_info = new String[]{'Weight','http://www.w3.org/2001/XMLSchema','double','1','1','false'};
        private String[] FromUnit_type_info = new String[]{'FromUnit','http://www.webserviceX.NET/','WeightUnit','1','1','false'};
        private String[] ToUnit_type_info = new String[]{'ToUnit','http://www.webserviceX.NET/','WeightUnit','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webserviceX.NET/','true'};
        private String[] field_order_type_info = new String[]{'Weight','FromUnit','ToUnit'};
    }
    public class WeightUnit {
    }
}