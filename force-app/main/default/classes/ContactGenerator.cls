public class ContactGenerator {
    
    public static void passMeAccurateParams(Date startDate, Date endDate, Integer amount){
        Integer numberOfMonths = 0;
        Integer amountPerDay = 0;
        if(endDate >= startDate){
            List<Contact> conList = new List<Contact>(); 
            
            numberOfMonths = startDate.monthsBetween(endDate)+1;
            Integer numberOfDays = startDate.daysBetween(endDate)+1;
            
            if(numberOfDays >0){
                amountPerDay = amount/numberOfDays;
            }
            
            for(Integer i=0; i< numberOfMonths; i++){
                Contact con = new Contact();
                con.LastName = 'i am number';
                //get the amount here for this month
                System.debug('this is the new contact...not inserted-->>'+con);
                conList.add(con);
            }
            if(conList.size()>0){
                INSERT conList;    
            }
            
        }
    }
}