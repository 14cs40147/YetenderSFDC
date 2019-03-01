@isTest
public class LeadProcessorTest {

    @testSetup
    public static void leadSetup(){
        
        List<Lead> leadlst = new List<Lead>();
        for(Integer i=1; i<=200; i++){
            leadlst.add(new Lead(LastName='Test '+i, Company='Satmetrix', LeadSource='Web'));
        }
        if(leadlst.size() >0)
            insert leadlst;
    }
    
    @isTest
    public static void test(){
        
        Test.startTest();
        Id batchid = Database.executeBatch(new LeadProcessor());
        Test.stopTest();
        
        System.assertEquals(200, [select count() from Lead where LeadSource = 'Dreamforce']);
    }
}