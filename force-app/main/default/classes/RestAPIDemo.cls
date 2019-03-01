@RestResource(urlMapping='/accountDetails/*')
global class RestAPIDemo {
    
    @HttpGet
    global static String getAccounts(){
        
        ResponseWrapper resWrapp = new ResponseWrapper();
        try {
            resWrapp.lstaccounts = [SELECT Id, Name, Phone, AccountNumber, Website FROM Account]; 
            resWrapp.statusCode = 200;
        } catch (Exception e) {
            resWrapp.isError = true;
            resWrapp.errorCode = e.getMessage();
            resWrapp.statusCode = 500;
        }
       return JSON.serialize(resWrapp);
    }
    
}