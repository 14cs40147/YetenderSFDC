trigger AccountObjectTrigger on Account (before insert) {

    if(CalculateAmountForEachMonth.runOnce){
        CalculateAmountForEachMonth.runOnce = false;
        CalculateAmountForEachMonth.createRecords(trigger.new);
    }
    
}