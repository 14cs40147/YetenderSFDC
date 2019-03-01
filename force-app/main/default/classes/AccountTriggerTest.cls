@isTest
//This is Annotation used to declare Test Class
public class AccountTriggerTest {
    
    static testmethod void InsertAccount()
    {
        Test.startTest();
        //Using this Test.startTest() we can save a program to hit groverner limit
       List<Account> lstAccount = new List<Account>();
        for(Integer i=0; i<5; i++)
        {
            //Callling TestDataFactory Method
            Account Acc1 =TestDataFactory.CreateAccount('Test Name Account','Warm');
          	Account acc= new Account(); 
            acc.Name= 'Test'+ i;
            acc.Rating='Warm';
            lstAccount.add(acc);
        }
        
        if(lstAccount.size()>0)
            insert lstAccount;
        Test.stopTest();
        
		       
    }
    
    
    static testmethod void InsertAccountNullRating()
    {
        Account Acc= new Account();
        acc.name='Test Account';
        try{
         insert acc;   
        }
        catch(Exception e)
        {
            system.debug('message'+e.getMessage());
            system.assertEquals(e.getMessage(), 'Insert failed. First exception on row 0; first error: FIELD_CUSTOM_VALIDATION_EXCEPTION, Account Rating Can\'t Be Blank: []');
            
        }
        
        
        
        
    }
}