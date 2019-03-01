public class TestPageController {

    public PageReference DODelete() {
        return null;
    }


    
        public Account account{get; set;}
        
        public TestPageController (){
        id accid= Apexpages.currentPage().getParameters().get('id');
        account=(Accid==null)?new Account():[Select id, Name, Phone, Rating from Account where id =: accid];
        }
        
      public PageReference doupdate() {return null;}

        
        public PageReference Save() {
        if(account.Rating==null){
                    
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Please Enter Rating value'));
            return null;
                }else{
                system.debug('Test Pages'+account.rating);
          
        upsert (account);
       PageReference returnsuccess= new ApexPages.StandardController(Account).view();
        return returnsuccess;
                }
    }
    
     
    

}