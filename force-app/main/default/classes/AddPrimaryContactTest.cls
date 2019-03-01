@isTest
public class AddPrimaryContactTest {

    @testSetup
    public static void createAccounts(){
        
        List<Account> accList = new List<Account>();
        for(Integer i=1; i<=100; i++){
            
            if(i<=50){
                accList.add(new Account(Name=String.valueOf(i), BillingState = 'NY'));
            }else{
                 accList.add(new Account(Name=String.valueOf(i), BillingState = 'CA'));
            }
        }
        if(accList.size() >0)
            Insert accList;
    }
    
    static testmethod void testQueueable() {
       
        Contact ct = new Contact(LastName='Test Cts');
        Insert ct;
        AddPrimaryContact updater = new AddPrimaryContact(ct, 'CA');
        // startTest/stopTest block to force async processes to run
        Test.startTest();        
        System.enqueueJob(updater);
        Test.stopTest();        
        // Validate the job ran. Check if record have correct parentId now
        System.assertEquals(50, [SELECT count() FROM Contact  WHERE Account.BillingState = 'CA']);
    }
}