public class AccountChildrenPdf {

    public List<Account> accounts{get;set;}
    
    public AccountChildrenPdf(){
        
        accounts = [SELECT Id, Name, (SELECT FirstName, LastName FROM Contacts), (SELECT Name FROM Opportunities) 
                    FROM Account];
        System.debug('Accounts : '+accounts);
    }
}