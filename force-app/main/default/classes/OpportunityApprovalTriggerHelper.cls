public class OpportunityApprovalTriggerHelper {
    
    public static void submitForApproval(Opportunity opp)
    {
        // Create an approval request for the Opportunity
        Approval.ProcessSubmitRequest req1 = new Approval.ProcessSubmitRequest();
        req1.setComments('Submitting request for approval automatically using Trigger');
        req1.setObjectId(opp.id);
        // Submit the approval request for the Opportunity
        Approval.ProcessResult result;
        try{
            result = Approval.process(req1); 
        }catch(Exception e){
            System.debug('Opps no Approval process is Assigned!!!');
        }
         
        
    }
}