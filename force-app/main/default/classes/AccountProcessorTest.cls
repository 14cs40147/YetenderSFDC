@isTest
public class AccountProcessorTest {
    
    static testMethod void testAccountProcessor(){
        
        test.startTest();
        Account ac1 = new Account(Name='Test 1');
        Account ac2 = new Account(Name='Test 2');
        insert new List<Account>{ac1,ac2};
        AccountProcessor.countContacts(new List<Id>{ac1.Id,ac2.Id});
        test.stopTest();
    }
}