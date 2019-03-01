public class ContactTriggerHandler {
    
    static Object_Validation__mdt objCustomMetaType;
    static set<String> setFields;
    static{
        
        try{
            objCustomMetaType = [SELECT Object_Name__c, Required_Fields__c FROM Object_Validation__mdt WHERE Object_Name__c = 'Contact' LIMIT 1]; 
            setFields = new Set<String>();
            setFields.addAll((objCustomMetaType.Required_Fields__c).split(','));
            
        }catch(Exception e){}
        
    }
    
    public static void onBeforeInsert(List<Contact> objConList){
        
        ContactTriggerHandler.validateField(objConList);
    }
    
    public static void onBeforeUpdate(List<Contact> objNewConList, List<Contact> objOldConList){
        
        ContactTriggerHandler.validateField(objNewConList);
    }
    
    private static void validateField(List<Contact> lstContacts){
        
        List<String> lstFldErrors =  new List<String>();
        for(Contact objContact : lstContacts){
            
            for(String fld : setFields){
                
                if(Schema.getGlobalDescribe().get('Contact').getDescribe().fields.getMap().get(fld)!= null && String.isBlank(String.valueOf(objContact.get(fld)))){
                    
                    lstFldErrors.add(fld);                    
                }
            }
            if(lstFldErrors.size() > 0){
                objContact.addError('Fields cannot be blank: '+lstFldErrors);
                lstFldErrors.clear();
            }
        }
        
    } 
}