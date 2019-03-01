global class BatchClass11 implements Database.Batchable<sobject>{
    String Query1 = 'Select id,Name,CreatedDate from Opportunity';
    
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
       System.debug('*********'+Query1);
       
       return Database.getQueryLocator(Query1);
    }
   
    global Void execute(DAtabase.BatchableContext bc, List<Opportunity> lstObj)
    {
           //Delete lstObj;
          List<Opportunity> lstopp = new List<Opportunity>();
        if(lstObj.size()>0)
        {
            for(Opportunity opp : lstObj)
            {
                if(opp.name=='12345 Opportunity')
                {
                   opp.Name='Test Opportunity'; 
                   lstopp.add(opp);
                }
            }
            if(lstopp.size()>0)
                update lstopp;
            
            System.debug('&&&&&&&& : '+lstObj);
        }
    }
    
    global void finish(Database.batchableContext bc)
    {
        
    }
}