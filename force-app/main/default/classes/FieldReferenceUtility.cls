public class FieldReferenceUtility {
    
    //Holds object Name
    String objName;
    
    public FieldReferenceUtility(String objName){
        this.objName = objName;
    }
    
    public  void calculateReference(){
        
        SObjectType objectType = Schema.getGlobalDescribe().get(objName); 
        Map<String,Schema.SObjectField> fieldMap = objectType.getDescribe().fields.getMap();
        Set<String> standaredFieldSet = new Set<String>{'id','name','ownerid','createdbyid','lastmodifieddate','isdeleted','createddate','lastmodifiedbyid','systemmodstamp'}; 
            for(String fName : fieldMap.keySet()) {
                if(!standaredFieldSet.contains(fName)){
                    
                    //Call Tooling API
                    String salesforceHost = System.Url.getSalesforceBaseURL().toExternalForm();
                    String url =  salesforceHost + '/services/data/v37.0/tooling/search/?q=FIND{'+fName+'}';
                    HttpRequest req = new HttpRequest();
                    req.setMethod('GET');
                    req.setEndpoint(url);
                    req.setHeader('Content-type', 'application/json');
                    req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionId());
                    Http http = new Http();
                    HTTPResponse res = http.send(req);
                    //Hold the return response
                    //Map<String,Object> responseMap = (Map<String,Object>)JSON.deserialize(res.getBody(), Map<String,Object>.class);
                    //System.debug('response Map==>'+responseMap);
                }
            }
        
    }
}