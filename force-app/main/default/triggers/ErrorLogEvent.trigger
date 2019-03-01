trigger ErrorLogEvent on ErrorLog__e (after insert) {

    Account acc = new Account(Name=trigger.new[0].RecordName__c);
    Insert acc;
}