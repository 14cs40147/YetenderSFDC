trigger AccountTrigger on Account (before insert, after insert, before delete,after update) 
{
    List<Opportunity> lstOpp = New List<Opportunity>();
    List<Account> lstAccount = new List<Account>();
   
    if(Trigger.isbefore)
    {
        if(!Test.isRunningTest()){
        if(Trigger.isinsert)
        {
             for(Account a: Trigger.new)
             {
                 If(a.Rating==NULL)
                     a.addError('Account Rating Can\'t Be Blank');
             }
            
        }
        }
        if(Trigger.isDelete)
        {
            for(Account a:Trigger.Old){
                if(a.Rating=='Hot')
                    a.addError('Hot Account Cant Be Deleted');
                    
            }
            
        }
        
    }
    else
    {
        if(Trigger.isinsert)
        {
            for(Account a : Trigger.new)
            {
                Opportunity opp = new Opportunity();
                opp.Name = a.Name+' '+'Opportunity';
                opp.CloseDate = Date.today();
                opp.stageName = 'Prospecting';
                opp.AccountId = a.id;
                lstOpp.add(opp);
             }
          if(lstOpp.size()>0)
              insert lstOpp;
            
        }
        
        
    }

    
}