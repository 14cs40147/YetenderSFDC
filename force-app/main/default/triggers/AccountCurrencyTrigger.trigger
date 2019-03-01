trigger AccountCurrencyTrigger on Account (after insert, after update) {
    
    if(AccountCurrencyTriggerHandler.isActionPerformed){
        if(trigger.isInsert){
            AccountCurrencyTriggerHandler.onAfterInsert(trigger.newMap);
        }
        
        If(trigger.isUpdate){
            AccountCurrencyTriggerHandler.isActionPerformed = false;
            AccountCurrencyTriggerHandler.onAfterUpdate(trigger.new, trigger.oldMap);
        }
        
    }
    
    
}