public class SOOQLUtility {
    
    public static String getCreatableFieldsSOQL(String objectName, String whereClause){
        
        String strQuery = '';
        // Get a map of field name and field token
        Map<String, Schema.SObjectField> fMap = Schema.getGlobalDescribe().get(objectName.toLowerCase()).getDescribe().Fields.getMap();
        list<string> selectFields = new list<string>();
        if (fMap != null){
            for (Schema.SObjectField ft : fMap.values()){ // loop through all field tokens (ft)
                Schema.DescribeFieldResult fd = ft.getDescribe(); // describe each field (fd)
                if (fd.isCreateable()){ // field is creatable
                    selectFields.add(fd.getName());
                }
            }
        }
        
        if (!selectFields.isEmpty()){
            for (string s:selectFields){
                strQuery += s + ',';
            }
            strQuery = strQuery.removeEnd(',');
            
        }
        
        
        return  whereClause != null ? 'SELECT ' + strQuery + ' FROM ' + objectName + ' WHERE ' + whereClause : 'SELECT ' + strQuery + ' FROM ' + objectName ;
        
    }
}