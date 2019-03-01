trigger CaseTrigger on Case (before insert) {

trigger.new[0].addError('Cannot INsert Record');
ErrorLog__e e = new ErrorLog__e();
e.RecordName__c = 'Kar';
EventBus.publish(e);

}