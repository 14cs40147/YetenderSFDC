public class CalculateAmountForEachMonth {
    
    public static Boolean runOnce = true;
    public static void createRecords(List<Account> lstAccountsNew){
        
        List<Account> lstAccounts = new List<Account>(); 
        for(Account acc : lstAccountsNew){
            
            if(acc.Start_Date__c != null && acc.End_Date__c != null && acc.AnnualRevenue != null){
                lstAccounts.addAll(CalculateAmountForEachMonth.calculateAmount(acc));
            }
        }
        
        if(lstAccounts.size() > 0)
            Insert lstAccounts;
    }                       
    //calculates amount for each month and creates number of records based on months count. 
    public static List<Account> calculateAmount(Account accRecord){
        Date startDate = Date.valueOf(accRecord.Start_Date__c);
        Date endDate = DAte.valueOf(accRecord.End_Date__c);
        List<Account> accLIst = new List<Account>();
        if(startDate <= endDate){
            Integer noOfMonths = getMonthsBetween(startDate, endDate);
            Integer noOfDaysBtMonths = noOfMonths != 1 ? getDaysBetween(startDate, endDate) : daysInAMonth(startDate, 'StartMonth');
            Double avgAmountPerDay = accRecord.AnnualRevenue/noOfDaysBtMonths;
            
            for(Integer i =0; i< noOfMonths ; i++){
                
                if(i == 0){
                    accRecord.AnnualRevenue = daysInAMonth(startDate, 'StartMonth')*avgAmountPerDay;
                    accRecord.End_Date__c = getMonthEndDate(startDate);
                }else{
                    Account accRec = accRecord.clone(false,true);
                    accRec.AnnualRevenue = daysInAMonth(startDate.addMonths(i).month() == endDate.month()  ? endDate : startDate.addMonths(i)  , i == 0 ? 'StartMonth' : i == noOfMonths-1 ? 'EndMonth' : '') * avgAmountPerDay;
                    accRec.Start_Date__c = getMonthStartDate(startDate.addMonths(i));
                    accRec.End_Date__c = (i == noOfMonths-1 ?  endDate : getMonthEndDate(startDate.addMonths(i)));
                    accList.add(accRec);
                }
                
            }
            
            
        }
        return accLIst; 
    }
    //Gets number of months between two dates
    private static Integer getMonthsBetween(Date sDate,Date eDate){
        
        return sDate.monthsBetween(eDate)+1;
    }
    
    //Gets number of days between two dates
    private static Integer getDaysBetween(Date sDate, Date eDate){
        
        return sDate.daysBetween(eDate)+1;   
    }
    
    //Get month start date
    private static Date getMonthStartDate(Date dat){
        
        return dat.toStartOfMonth();
    }
    
    //Get month end date
    private static Date getMonthEndDate(Date dat){
        
        return dat.toStartOfMonth().addMonths(1).addDays(-1);
    }
    
    //Calculates number of days in a particular month
    private static Integer daysInAMonth(Date sDate, String monthType){
        
        Integer noOfDys = Date.daysInMonth(sDate.year(), sDate.month());
        return monthType == 'StartMonth' ? noOfDys - sDate.day()+1 : monthType == 'EndMonth' ? sDate.day() : noOfDys; 
        
    }
}