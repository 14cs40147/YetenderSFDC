public class samplePagerCtrl {
   @AuraEnabled
 public static AccountPagerWrapper fetchAccount(Integer pageNumber ,Integer recordToDisply) {
      Integer pageSize = recordToDisply;
      Integer offset = (Integer.valueOf(pageNumber)-1) * Integer.valueOf(pageSize) ;
   
    AccountPagerWrapper obj =  new AccountPagerWrapper();
        obj.pageSize = pageSize;
        obj.page =  pageNumber;
        obj.total = [SELECT count() FROM account];
        obj.accounts = [SELECT Id, Name,Phone FROM Account ORDER BY Name LIMIT :Integer.valueOf(recordToDisply) OFFSET :offset];
     	return obj;
     }
 public class AccountPagerWrapper {
    @AuraEnabled public Integer pageSize {get;set;}
    @AuraEnabled public Integer page {get;set;}
    @AuraEnabled public Integer total {get;set;}
    @AuraEnabled public List<Account> accounts {get;set;}
   }
}