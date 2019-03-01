global class AccountProcessor {

    @future
    public static void countContacts(List<Id> accLst){
        
        List<Account> acLst = new List<Account>();
        for(Account ac : [SELECT Id, Number_of_Contacts__c,(SELECT Id FROM Contacts) FROM Account WHERE Id IN :accLst]){
           
            ac.Number_of_Contacts__c = ac.Contacts.size();
            acLst.add(ac);
        }
        
        if(aclst.size()>0)
        Update acLst;
    }
}