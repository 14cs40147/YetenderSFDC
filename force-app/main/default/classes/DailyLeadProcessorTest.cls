@isTest
public class DailyLeadProcessorTest {
    
    public static String CRON_EXP = '0 0 0 8 1 ? 2018'; //'0 0 0 15 3 ? 2022'
    
    public static testmethod void testScheduledJob() {
        
        List<Lead> listLead = new List<Lead>();
        for(Integer i=1; i<=200; i++){
            listLead.add(new Lead(LastName=String.valueOf(i), LeadSource = null , Company = 'Satmetrix'));
        }
        if(listLead.size() >0){
            Insert listLead;
        }
        Map<Id, Lead> leadMap = new Map<Id, Lead>(listLead);    
        
        Test.startTest();
        // Schedule the test job
        String jobId = System.schedule('LeadStatus Update',CRON_EXP,new DailyLeadProcessor());         
        Test.stopTest();
        
        System.assertEquals(200, [SELECT count() FROM Lead WHERE LeadSource = 'Dreamforce' AND Id IN :leadMap.keySet()]);
    }
}