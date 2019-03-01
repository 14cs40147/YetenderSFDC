public class LightningVisualforceDemoController {

    public String userName{get;set;}
    public String userPassword{get;set;}
    public Boolean isValidUser{get;set;}
    
    public pageReference doLogin(){
        System.debug('Called doLogin()');
        System.debug('UserName: '+userName);
        System.debug('Password: '+userPassword);
        if(userName!=''  && userPassword !=''){
          isValidUser =true;  
        }else{
            isValidUser =false;  
        }
        return null;
    }
}