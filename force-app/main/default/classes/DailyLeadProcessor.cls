global class DailyLeadProcessor  implements Schedulable{

    global void execute(SchedulableContext ctx) {
        
        List<Lead> leadLst = new List<Lead>();
        for(Lead l : [SELECT LeadSource FROM Lead WHERE LeadSource = null LIMIT 200]){
           l.LeadSource ='Dreamforce'; 
            leadLst.add(l);
        }
        if(leadLst.size() >0)
            update leadLst;
    }
}