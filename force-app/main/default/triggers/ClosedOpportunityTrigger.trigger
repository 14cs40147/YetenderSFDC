trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<task> taskLst = new List<task>();
    
    for(Opportunity op: trigger.new ){
       
        if(op.stagename == 'Closed Won'){
            taskLst.add(new Task(WhatId = op.Id, Status='Active', Subject='Follow Up Test Task', ActivityDate= System.today()));
        }
    }
    
    if(taskLst.size()>0){
        Insert taskLst; 
    }
}