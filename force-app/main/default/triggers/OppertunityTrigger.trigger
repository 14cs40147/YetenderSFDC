trigger OppertunityTrigger on Opportunity (before insert) {
 
    for(Opportunity o:Trigger.new)
    {
        for(Opportunity i:[Select Account.id from Opportunity])
        {   
            if(i!=NULL)
            {
                if(i.AccountId==o.AccountId)
                {
                    Account acc=[Select Name from Account where id=:i.AccountId];
                    o.addError(acc.Name+' is already used by other Opportunity');
                }
            }
        }

    }
       
}