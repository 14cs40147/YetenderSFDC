public class ContactRollupTriggerHandler {
    
    
    public static void onInsert(List<Contact> lstContact){
        
        Map<Id,Account> mapAccount = new Map<Id,Account>([SELECT Total_Contacts__c FROM Account WHERE Id IN :getAccountIdSet(lstContact)]);
        for(Contact objCon : lstContact){
            
            if(objCon.AccountId != null){
                
                if(mapAccount.containsKey(objCon.AccountId)){
                    
                    Account objAcc = mapAccount.get(objCon.AccountId);
                    objAcc.Total_Contacts__c = objAcc.Total_Contacts__c != null ? objAcc.Total_Contacts__c+1 : 1;
                    mapAccount.put(objCon.AccountId, objAcc);
                }
            }
        }
        if(mapAccount.size() > 0){
            updateAccounts(mapAccount.values());
        }
    }
    
    public static void onUpdate(List<Contact> lstNewContact, Map<Id, Contact> mapOldContact){
        
        Set<Id> setAccount = new Set<Id>(getAccountIdSet(lstNewContact));
        setAccount.addAll(getAccountIdSet(mapOldContact.values()));
        Map<Id,Account> mapAccount = new Map<Id,Account>([SELECT Total_Contacts__c FROM Account WHERE Id IN :setAccount]);
        for(Contact objCon : lstNewContact){
            if(objCon.AccountId != mapOldContact.get(objCon.Id).AccountId){
                
                if(mapOldContact.get(objCon.Id).AccountId == null && objCon.AccountId != null){
                    
                    //To update new Account
                    Account objAcc = mapAccount.get(objCon.AccountId);
                    objAcc.Total_Contacts__c = objAcc.Total_Contacts__c != null ? objAcc.Total_Contacts__c+1 : 1;
                    mapAccount.put(objCon.AccountId, objAcc);
                }else if(mapOldContact.get(objCon.Id).AccountId != null && objCon.AccountId == null){
                    
                    //To update old Account
                    Account objAccount = mapAccount.get(mapOldContact.get(objCon.Id).AccountId);
                    objAccount.Total_Contacts__c = objAccount.Total_Contacts__c != null ? objAccount.Total_Contacts__c-1 : 0;
                    mapAccount.put(objAccount.Id, objAccount);
                }else{
                    
                    //To update new Account
                    Account objAcc = mapAccount.get(objCon.AccountId);
                    objAcc.Total_Contacts__c = objAcc.Total_Contacts__c != null ? objAcc.Total_Contacts__c+1 : 1;
                    mapAccount.put(objCon.AccountId, objAcc);
                    
                    //To update old Account
                    Account objAccount = mapAccount.get(mapOldContact.get(objCon.Id).AccountId);
                    objAccount.Total_Contacts__c = objAccount.Total_Contacts__c != null ? objAccount.Total_Contacts__c-1 : 0;
                    mapAccount.put(objAccount.Id, objAccount);
                }
                
                
            }
        }
        if(mapAccount.size() > 0){
            updateAccounts(mapAccount.values());
        }
    }
    
    public static void onDelete(List<Contact> lstContact){
        
        Map<Id,Account> mapAccount = new Map<Id,Account>([SELECT Total_Contacts__c FROM Account WHERE Id IN :getAccountIdSet(lstContact)]);
        for(Contact objCon : lstContact){
            
            if(objCon.AccountId != null){
                
                if(mapAccount.containsKey(objCon.AccountId)){
                    
                    Account objAcc = mapAccount.get(objCon.AccountId);
                    objAcc.Total_Contacts__c = objAcc.Total_Contacts__c != null ? objAcc.Total_Contacts__c-1 : 0;
                    mapAccount.put(objCon.AccountId, objAcc);
                }
            }
        }
        if(mapAccount.size() > 0){
            updateAccounts(mapAccount.values());
        }
        
    }
    
    private static void updateAccounts(List<Account> lstAccount){
        
        Update lstAccount;
    }
    
    private static Set<Id> getAccountIdSet(List<Contact> lstContact){
        
        Set<Id> setAccount = new Set<Id>();
        for(Contact con : lstContact){
            
            if(con.AccountId !=null){
                setAccount.add(con.AccountId);
            }
        }
        return setAccount;
    }
}