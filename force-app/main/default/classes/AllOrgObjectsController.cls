public class AllOrgObjectsController {
    
    public List<SelectOption> objects{get;set;}
    public AllOrgObjectsController(){
        
        objects = new List<SelectOption>();
        getObjects();
    }
    
    public void getObjects(){
        
        List<Schema.SObjectType> gd = Schema.getGlobalDescribe().Values();
        objects.add(new SelectOption('--None--','--None--'));
        
        for(Schema.SObjectType f : gd)
        {
            if(f.getDescribe().getName().contains('__c'))
                objects.add(new SelectOption(f.getDescribe().getName(),f.getDescribe().getName()));
        }
        objects.sort();
        
    }
}