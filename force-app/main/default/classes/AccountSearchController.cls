public class AccountSearchController {
    
    //holds account reference
    public Account acc{
         get;
         set{
            if(acc == null)
                acc= new Account();
        }
    }
    
    //List to hold accounts
    public List<Account> lstAccount{
        get{
            return accounts.getRecords();
        }
        set;
    }
    
    // instantiate the StandardSetController from a query locator
    public ApexPages.StandardSetController accounts{
        get{
            if(accounts == null){
                accounts = new ApexPages.StandardSetController(Database.getQueryLocator('SELECT Name,Industry,AccountNumber FROM Account ORDER BY Name')); 
                accounts.setPageSize(pageSize);
            } 
            return accounts;
        }
        set;
    }
    
    //holds page size
    public Integer pageSize{
        get{
            if(pageSize == null)
                pageSize =10;
            return pageSize;
        }
        set;
    }
    
   // indicates whether there are more records after the current page set.
    public Boolean hasNext {
        get {
            return accounts.getHasNext();
        }
        set;
    }
    
    // indicates whether there are more records before the current page set.
    public Boolean hasPrevious {
        get {
            return accounts.getHasPrevious();
        }
        set;
    }
    
    // returns the page number of the current page set
    public Integer pageNumber {
        get {
            return accounts.getPageNumber();
        }
        set;
    }
    
    //returns total page count
    public Integer pages{
        get{
            return accounts.getResultSize()/pageSize;
        }
		set;        
    }
    // returns the first page of records
    public void first() {
        accounts.first();
    }
    
    // returns the last page of records
    public void last() {
        accounts.last();
    }
    
    // returns the previous page of records
    public void previous() {
        accounts.previous();
    }
    
    // returns the next page of records
    public void next() {
        accounts.next();
    }
     
   
}