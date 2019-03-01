@isTest
private class MyRecursiveTriggerTest {

    @Testsetup
    static void createData(){
        Account acc = new Account(Name='Test Account');
        Insert acc;
    }
    @isTest
    static void testAfterInsert(){
        
        Test.startTest();
        
        Test.stopTest();
    }
    
}