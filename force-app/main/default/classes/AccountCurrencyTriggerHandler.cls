public class AccountCurrencyTriggerHandler {
    
    public static Boolean isActionPerformed = true;
    
    @future(callout=true)
    public static void getINR(Set<Id> setAccIds ){
        Http httpProtocol = new Http();
        HttpRequest request = new HttpRequest();
        String endpoint = 'http://free.currencyconverterapi.com/api/v5/convert?q=USD_INR&compact=y';
        request.setEndPoint(endpoint); 
        request.setMethod('GET');
        request.setTimeout(120000);
        HttpResponse response = httpProtocol.send(request);
        if(response.getStatusCode() == 200){
            
            Map<String, Object> root = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
            Object items = root.get('USD_INR');
            Map<String, Object> i = (Map<String, Object>)items;
            if(Double.valueOf(i.get('val')) != null){
                
                List<Account> lstAccountsUpdate = new List<Account>();
                for(Account objAcc : [SELECT Amount_in_INR__c, AnnualRevenue  FROM Account WHERE Id IN : setAccIds AND AnnualRevenue != null]){
                    objAcc.Amount_in_INR__c = objAcc.AnnualRevenue*Double.valueOf(i.get('val'));
                    lstAccountsUpdate.add(objAcc);
                }
                if(lstAccountsUpdate.size() > 0) 
                    UPDATE lstAccountsUpdate;
            } 
        }
        
        
    }
    
    public static void onAfterInsert(Map<Id, Account> mapAccountNew){
        
        AccountCurrencyTriggerHandler.getINR(mapAccountNew.keySet());
        
    }
    
    public static void onAfterUpdate(List<Account> lstNewAccounts, Map<Id, Account> mapOldAccounts){
        
        Set<Id> setAccUpdateSet = new Set<Id>();
        for(Account acc : lstNewAccounts){
            
            if(acc.AnnualRevenue != mapOldAccounts.get(acc.Id).AnnualRevenue && acc.AnnualRevenue != null){
                setAccUpdateSet.add(acc.Id); 
            }
        }
        if(setAccUpdateSet.size() >0){
            AccountCurrencyTriggerHandler.getINR(setAccUpdateSet);
        }
        
    }
    
}