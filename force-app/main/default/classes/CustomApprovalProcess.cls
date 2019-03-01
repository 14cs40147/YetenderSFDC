public class CustomApprovalProcess {
    
    public static void submitApprovalProcess(){
        
        List<Approval.ProcessSubmitRequest> requests = new List<Approval.ProcessSubmitRequest> ();
        
        for (Contact oppId: [SELECT Id FROM Contact]) {
            Approval.ProcessSubmitRequest req1 = new Approval.ProcessSubmitRequest();
            req1.setComments('Submitting request for approval ');
            req1.setObjectId(oppId.Id);
            requests.add(req1);
        }
        
        
        Approval.ProcessResult[] processResults = null;
        try {
            processResults = Approval.process(requests, true);
        }catch (System.DmlException e) {
            System.debug('Exception Is ' + e.getMessage());
        }
    }
    
    
}