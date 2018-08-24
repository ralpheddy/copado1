//Generated by wsdl2apex

public class AtomicClock {
    public class GetUniversalTimeResponse_element {
        public String GetUniversalTimeResult;
        private String[] GetUniversalTimeResult_type_info = new String[]{'GetUniversalTimeResult','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.abundanttech.com/webservices/AtomicClock','true'};
        private String[] field_order_type_info = new String[]{'GetUniversalTimeResult'};
    }
    public class AtomicClockWSSoap {
        public String endpoint_x = 'http://www.abundanttech.com/WebServices/AtomicClock/AtomicClock.asmx';
        private String[] ns_map_type_info = new String[]{'http://www.abundanttech.com/webservices/AtomicClock', 'AtomicClock'};
        public String GetUniversalTime() {
            AtomicClock.GetUniversalTime_element request_x = new AtomicClock.GetUniversalTime_element();
            AtomicClock.GetUniversalTimeResponse_element response_x;
            Map<String, AtomicClock.GetUniversalTimeResponse_element> response_map_x = new Map<String, AtomicClock.GetUniversalTimeResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.abundanttech.com/webservices/AtomicClock/GetUniversalTime',
              'http://www.abundanttech.com/webservices/AtomicClock',
              'GetUniversalTime',
              'http://www.abundanttech.com/webservices/AtomicClock',
              'GetUniversalTimeResponse',
              'AtomicClock.GetUniversalTimeResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetUniversalTimeResult;
        }
    }
    public class GetUniversalTime_element {
        private String[] apex_schema_type_info = new String[]{'http://www.abundanttech.com/webservices/AtomicClock','true'};
        private String[] field_order_type_info = new String[]{};
    }
}