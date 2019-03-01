@isTest
private class TestVerifyDate {

    @isTest
    static void CheckDates(){
        
        Date date1 = Date.today();
        Date date2 = Date.today().addDays(10);
        VerifyDate.CheckDates(date1, date2);
        VerifyDate.CheckDates(date1, date2.addDays(30));
    }
}