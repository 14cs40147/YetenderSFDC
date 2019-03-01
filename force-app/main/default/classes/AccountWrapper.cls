public class AccountWrapper {
    
    public Account acc{get;set;}
    public Boolean isSelected{get;set;}
    
    public AccountWrapper(){
       this.acc = new Account();
       this.isSelected = false; 
    }
    
    public AccountWrapper(Account acc, Boolean isSelected){
        this.acc = acc;
        this.isSelected = isSelected;
    }
}