global class AccountRecordWsdl {
    
   webservice  static void CreateAccount(String Accname,String Rating)
    {
        Account acc=new Account(Name=Accname,Rating=Rating);
        system.debug('Acc is '+ acc);
        insert acc;   
    }

}