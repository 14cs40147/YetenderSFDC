public class AddPrimaryContact implements Queueable{

    private Contact ct;
    private String stateName;
        
    public AddPrimaryContact(Contact ct, String stateName){
        this.ct = ct;
        this.stateName = stateName;
    }
    
    public void execute(QueueableContext context) {
        
        List<Contact> conList = new List<Contact>();
        
        for(Account acc : [SELECT BillingState FROM Account WHERE BillingState = :stateName LIMIT 200]){
            Contact newCt = ct.clone();
            newCt.AccountId = acc.Id;
            conList.add(newCt);
        }
        
        if(conList.size() >0)
            Insert conList;
    }
}