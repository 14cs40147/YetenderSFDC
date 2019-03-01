trigger ContactTrigger on Contact (before insert, before update) {

    if(trigger.isInsert){
        
        ContactTriggerHandler.onBeforeInsert(trigger.new);
    }
    
    if(trigger.isUpdate){
        
        ContactTriggerHandler.onBeforeUpdate(trigger.new, trigger.old);
    }
}