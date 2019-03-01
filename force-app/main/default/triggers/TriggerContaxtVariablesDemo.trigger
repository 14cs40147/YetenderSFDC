//This Trigger illustrates various trigger context variables
trigger TriggerContaxtVariablesDemo on Account (after undelete) {

    
        
            System.debug('Inside After Delete====>');
        	System.debug('Trigger.new'+trigger.new);
            System.debug('Trigger.old'+trigger.old);
            System.debug('Trigger.newMap'+trigger.newMap);
            System.debug('Trigger.oldmap'+trigger.oldMap);
    
}