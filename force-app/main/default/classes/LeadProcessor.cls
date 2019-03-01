global class LeadProcessor implements Database.Batchable<sObject>{
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        return Database.getQueryLocator('SELECT Id, LeadSource FROM Lead');
    }
    
    global void execute(Database.BatchableContext bc, List<Lead> leadLst){
        
        List<Lead> leadToUpdate = new List<Lead>();
        for(Lead l: leadLst){
            l.LeadSource = 'Dreamforce';
            leadToUpdate.add(l);
        }
        if(leadToUpdate.size() >0)
            update leadToUpdate;
    }
    
    global void finish(Database.BatchableContext bc){
        
    }
}