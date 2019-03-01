@RestResource(urlMapping='/createNewAccountUsingRestAPI/*')
global class AccountRestClass {
	
     @HttpPost
    global static string createAccountRecord(String name) {
     string succError;
     account acc = new account();
     acc.name = name;       
     insert acc;
     acc.accountsource = 'Other';
     update acc;
     succError = 'New account has been created. Account Record id is:'+acc.id;
     return succError;
    }
  
    @httpput
    global static string updateAccountRecord(String name) {
       string returnmessage = 'Account are updated successfully';
       List<account> accupdateList = [select name,id,AccountSource from account where name =: name];
       for(account acc : accupdateList){
           acc.AccountSource = 'Web' ;
           returnmessage = returnmessage +acc.id;
       }
       try{
         update accupdateList;
       }
       catch(exception ex){
         returnmessage = ex.getmessage();
       }
       return returnmessage ;
    }           
}