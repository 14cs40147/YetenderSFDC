global class SampleBatchClass implements Database.Batchable<String> {
    
    global Iterable<String> start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        return getStrings();
    }
    global void execute(Database.BatchableContext bc, List<String> records){
        // process each batch of records
        System.debug('List Of Strings:'+records);
    }    
    global void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }  
    
    private List<String> getStrings(){
        
        return new List<String>{'A','B','C','D','E'};
    }
}