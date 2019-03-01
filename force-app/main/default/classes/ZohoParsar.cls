public class ZohoParsar{
    
    public cls_projects[] projects;
    
    class cls_projects {
        public String name;	//Smarteeva
    }
    
    public static ZohoParsar parse(String json){
        return (ZohoParsar) System.JSON.deserialize(json, ZohoParsar.class);
    }
    
}