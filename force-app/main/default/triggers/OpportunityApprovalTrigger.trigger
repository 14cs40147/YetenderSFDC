trigger OpportunityApprovalTrigger on Opportunity (after insert, after update) {
    
  for(Opportunity opp :trigger.new){
      if(opp.Amount !=null && opp.Amount >=1000){
          OpportunityApprovalTriggerHelper.submitForApproval(opp);
      }
  }  

}