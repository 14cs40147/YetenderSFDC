public class ResponseWrapper{
    public list<Account> lstaccounts;
    public boolean isError ;
    public string errorCode;
    public integer statusCode;
       public ResponseWrapper(){
         lstaccounts = new list<Account>();
         isError= false;
    }

}