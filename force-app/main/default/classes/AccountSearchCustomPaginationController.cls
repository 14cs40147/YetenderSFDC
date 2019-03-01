public class AccountSearchCustomPaginationController {
    
    public AccountSearchCustomPaginationController(){
       
        lstAccount = Database.query(buildQuery(0,pageSize,'Name','ASC'));
        pages = getTotalPages(pageSize);
        pageNumber = 1;
    }
    
    //Holds the accounts list
    public List<Account> lstAccount{
        get;
        set;
    }
    
    //holds page size
    public Integer pageSize{
        get{
            if(pageSize == null)
                pageSize =15;
            return pageSize;
        }
        set;
    }
    
   
    // returns the page number of the current page set
    public Integer pageNumber {
        get ;
        set;
    }
    
    //returns total page count
    public Integer pages{
        get;
        set;       
    }
    // returns the first page of records
    public pageReference first() {
        
        pageNumber = 1;
        lstAccount = Database.query(buildQuery(((pageNumber -1)*pageSize),pageSize,'Name','ASC'));
        return null;
    }
    
    // returns the last page of records
    public pageReference last() {
    	
        pageNumber = pages;
        lstAccount = Database.query(buildQuery(((pageNumber -1)*pageSize),pageSize,'Name','ASC'));
        return null;
    }
    
    // returns the previous page of records
    public pageReference previous() {
        pageNumber = pageNumber -1;
        lstAccount = Database.query(buildQuery(((pageNumber -1)*pageSize),pageSize,'Name','ASC'));
        return null;
    }
    
    // returns the next page of records
    public pageReference next() {
        pageNumber = pageNumber +1;
        lstAccount = Database.query(buildQuery(((pageNumber -1)*pageSize),pageSize,'Name','ASC'));
        return null;
    }
     
    public String buildQuery(Integer offSet, Integer recLimit, String sortField, String sortDir){
        
        return 'SELECT Name,Industry, AccountNumber FROM Account ORDER BY '+sortField+' '+sortDir+' LIMIT '+recLimit+' OFFSET '+ offSet+'' ;
    }
    
    public Integer getTotalPages(Integer pageSize){
        
        return  [SELECT Count() FROM Account] != 0 ? Integer.valueOf(Math.ceil([SELECT Count() FROM Account] / Double.valueOf(pageSize))) : 0;
    }
    
    public pageReference loadRecordsBasedOnChoice(){
        lstAccount = Database.query(buildQuery(0,pageSize,'Name','ASC'));
        pages = getTotalPages(pageSize);
        pageNumber = 1;
        return null;
    }
}