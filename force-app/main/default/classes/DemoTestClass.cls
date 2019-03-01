@isTest
private class DemoTestClass {

    @testSetup static void testData(){
        
        Account acc = new Account(Name = 'Test Account');
        Insert acc;
    }
    
    static testMethod void  method1(){
        
        Account acc = [SELECT Name FROM Account LIMIT 1];
        acc.Name = 'Testing';
        Update acc;
    }
    
    static testMethod void  method2(){
        
        System.debug('Account==>'+[SELECT Name FROM Account LIMIT 1]);
    }
}