public class AccountHandler {

    public static Account insertNewAccount(String accName){
        
        Account acc = new Account(Name=accName);
        
        try{
           Insert acc; 
            return acc;
        }catch(DMLEXCEPTION e){
            return null;
        }
      
    }
}