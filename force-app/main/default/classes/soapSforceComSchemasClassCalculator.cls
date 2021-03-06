//Generated by wsdl2apex

public class soapSforceComSchemasClassCalculator {
    public class addition_element {
        public Integer num1;
        public Integer num2;
        private String[] num1_type_info = new String[]{'num1','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] num2_type_info = new String[]{'num2','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'num1','num2'};
    }
    public class LogInfo {
        public String category;
        public String level;
        private String[] category_type_info = new String[]{'category','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] level_type_info = new String[]{'level','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'category','level'};
    }
    public class DebuggingInfo_element {
        public String debugLog;
        private String[] debugLog_type_info = new String[]{'debugLog','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'debugLog'};
    }
    public class address {
        public String city;
        public String country;
        public String countryCode;
        public String geocodeAccuracy;
        public String postalCode;
        public String state;
        public String stateCode;
        public String street;
        private String[] city_type_info = new String[]{'city','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] country_type_info = new String[]{'country','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] countryCode_type_info = new String[]{'countryCode','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] geocodeAccuracy_type_info = new String[]{'geocodeAccuracy','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] postalCode_type_info = new String[]{'postalCode','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] state_type_info = new String[]{'state','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] stateCode_type_info = new String[]{'stateCode','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] street_type_info = new String[]{'street','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'city','country','countryCode','geocodeAccuracy','postalCode','state','stateCode','street'};
    }
    public class getSessionIdResponse_element {
        public String result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class multiplication_element {
        public Integer num1;
        public Integer num2;
        private String[] num1_type_info = new String[]{'num1','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] num2_type_info = new String[]{'num2','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'num1','num2'};
    }
    public class CallOptions_element {
        public String client;
        private String[] client_type_info = new String[]{'client','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'client'};
    }
    public class divisionResponse_element {
        public Integer result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class DebuggingHeader_element {
        public soapSforceComSchemasClassCalculator.LogInfo[] categories;
        public String debugLevel;
        private String[] categories_type_info = new String[]{'categories','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'0','-1','false'};
        private String[] debugLevel_type_info = new String[]{'debugLevel','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'categories','debugLevel'};
    }
    public class subtraction_element {
        public Integer num1;
        public Integer num2;
        private String[] num1_type_info = new String[]{'num1','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] num2_type_info = new String[]{'num2','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'num1','num2'};
    }
    public class multiplicationResponse_element {
        public Integer result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class getSessionId_element {
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class SessionHeader_element {
        public String sessionId;
        private String[] sessionId_type_info = new String[]{'sessionId','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'sessionId'};
    }
    public class division_element {
        public Integer num1;
        public Integer num2;
        private String[] num1_type_info = new String[]{'num1','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] num2_type_info = new String[]{'num2','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'num1','num2'};
    }
    public class location {
        public Double latitude;
        public Double longitude;
        private String[] latitude_type_info = new String[]{'latitude','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] longitude_type_info = new String[]{'longitude','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'latitude','longitude'};
    }
    public class additionResponse_element {
        public Integer result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class subtractionResponse_element {
        public Integer result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class AllowFieldTruncationHeader_element {
        public Boolean allowFieldTruncation;
        private String[] allowFieldTruncation_type_info = new String[]{'allowFieldTruncation','http://soap.sforce.com/schemas/class/CalculatorWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService','true','false'};
        private String[] field_order_type_info = new String[]{'allowFieldTruncation'};
    }
    public class CalculatorWebService {
        public String endpoint_x = 'https://ap5.salesforce.com/services/Soap/class/CalculatorWebService';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public soapSforceComSchemasClassCalculator.DebuggingHeader_element DebuggingHeader;
        public soapSforceComSchemasClassCalculator.SessionHeader_element SessionHeader;
        public soapSforceComSchemasClassCalculator.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public soapSforceComSchemasClassCalculator.CallOptions_element CallOptions;
        public soapSforceComSchemasClassCalculator.DebuggingInfo_element DebuggingInfo;
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/CalculatorWebService';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/CalculatorWebService';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/CalculatorWebService';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/CalculatorWebService';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/CalculatorWebService';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/CalculatorWebService', 'soapSforceComSchemasClassCalculator'};
        public Integer division(Integer num1,Integer num2) {
            soapSforceComSchemasClassCalculator.division_element request_x = new soapSforceComSchemasClassCalculator.division_element();
            request_x.num1 = num1;
            request_x.num2 = num2;
            soapSforceComSchemasClassCalculator.divisionResponse_element response_x;
            Map<String, soapSforceComSchemasClassCalculator.divisionResponse_element> response_map_x = new Map<String, soapSforceComSchemasClassCalculator.divisionResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'division',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'divisionResponse',
              'soapSforceComSchemasClassCalculator.divisionResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public Integer multiplication(Integer num1,Integer num2) {
            soapSforceComSchemasClassCalculator.multiplication_element request_x = new soapSforceComSchemasClassCalculator.multiplication_element();
            request_x.num1 = num1;
            request_x.num2 = num2;
            soapSforceComSchemasClassCalculator.multiplicationResponse_element response_x;
            Map<String, soapSforceComSchemasClassCalculator.multiplicationResponse_element> response_map_x = new Map<String, soapSforceComSchemasClassCalculator.multiplicationResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'multiplication',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'multiplicationResponse',
              'soapSforceComSchemasClassCalculator.multiplicationResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public Integer subtraction(Integer num1,Integer num2) {
            soapSforceComSchemasClassCalculator.subtraction_element request_x = new soapSforceComSchemasClassCalculator.subtraction_element();
            request_x.num1 = num1;
            request_x.num2 = num2;
            soapSforceComSchemasClassCalculator.subtractionResponse_element response_x;
            Map<String, soapSforceComSchemasClassCalculator.subtractionResponse_element> response_map_x = new Map<String, soapSforceComSchemasClassCalculator.subtractionResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'subtraction',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'subtractionResponse',
              'soapSforceComSchemasClassCalculator.subtractionResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public Integer addition(Integer num1,Integer num2) {
            soapSforceComSchemasClassCalculator.addition_element request_x = new soapSforceComSchemasClassCalculator.addition_element();
            request_x.num1 = num1;
            request_x.num2 = num2;
            soapSforceComSchemasClassCalculator.additionResponse_element response_x;
            Map<String, soapSforceComSchemasClassCalculator.additionResponse_element> response_map_x = new Map<String, soapSforceComSchemasClassCalculator.additionResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'addition',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'additionResponse',
              'soapSforceComSchemasClassCalculator.additionResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public String getSessionId() {
            soapSforceComSchemasClassCalculator.getSessionId_element request_x = new soapSforceComSchemasClassCalculator.getSessionId_element();
            soapSforceComSchemasClassCalculator.getSessionIdResponse_element response_x;
            Map<String, soapSforceComSchemasClassCalculator.getSessionIdResponse_element> response_map_x = new Map<String, soapSforceComSchemasClassCalculator.getSessionIdResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'getSessionId',
              'http://soap.sforce.com/schemas/class/CalculatorWebService',
              'getSessionIdResponse',
              'soapSforceComSchemasClassCalculator.getSessionIdResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
}