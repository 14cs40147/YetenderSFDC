trigger ContactRollupTrigger on Contact (after insert, after update, after delete, after undelete) {
    
    //Check for account association when record is inserted 
    if(trigger.isInsert ){
        
        ContactRollupTriggerHandler.onInsert(trigger.new);
    }
    
    
    
    //Checks old account and new account association with contact
    if(trigger.isUpdate){
        
        Map<Id, Contact> oldContactMap = new Map<Id, Contact>(trigger.oldMap);
        List<Contact> newContacts = new List<Contact>(trigger.new);
        ContactRollupTriggerHandler.onUpdate(newContacts, oldContactMap); 
    }
    
    //Checks for deleted contact
    if(trigger.isDelete){
        
        ContactRollupTriggerHandler.onDelete(trigger.old);
    }
    
    //Checks for recovered contacts from Recyclebin
    if(trigger.isUndelete){
        
        ContactRollupTriggerHandler.onInsert(trigger.new);
    }
}