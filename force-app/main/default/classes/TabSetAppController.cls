public class TabSetAppController {

    @AuraEnabled
    public static List<Account> getAccounts(){
        return [SELECT Id,Name FROM Account];
    }
    
    @AuraEnabled 
    public static List<Contact> getContacts(Account acc){
        
        List<Account> accLst= [SELECT Id,Name, (Select Id,LastName FROM Contacts )FROM Account WHERE Id=:acc.Id];
        List<Contact> ctsLst =new List<Contact>();
        for(Account a: accLst){
            for(Contact c: a.contacts){
                ctsLst.add(c);
            }
        }
        
        return ctsLst;
    }
}