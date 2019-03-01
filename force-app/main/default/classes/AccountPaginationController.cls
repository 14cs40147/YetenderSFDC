public class AccountPaginationController {
    
    List<AccountWrapper> lstAccounts{get;set;}
    // instantiate the StandardSetController from a query locator
    public ApexPages.StandardSetController accounts{
        
        get{
            if(accounts == null) {
                accounts = new ApexPages.StandardSetController(Database.getQueryLocator([Select Id, Name FROM Account Order By Name limit 500]));
                // sets the number of records in each page set
                accounts.setPageSize(10);
            }
            return accounts; 
        }
        set;
    }
    
    // returns a list of wrapper objects for the sObjects in the current page set
    public List<AccountWrapper> getlstAccounts() {
        lstAccounts = new List<AccountWrapper>();
        for (Account acc : (List<Account>)accounts.getRecords())
            lstAccounts.add(new AccountWrapper(acc,false));
        
        return lstAccounts;
    }
    
    // displays the selected items
    public PageReference process() {
        for (AccountWrapper cw : lstAccounts) {
            if (cw.isSelected)
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,cw.acc.Name));
        }
        return null;
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
            return accounts.getResultSize()/10;
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
    
    // returns the PageReference of the original page, if known, or the home page.
    public void cancel() {
        accounts.cancel();
    }
    
    
}