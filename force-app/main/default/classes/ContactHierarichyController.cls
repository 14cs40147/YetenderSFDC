public class ContactHierarichyController {
   	
    public static List<Node> lstNode =new List<Node>();
    public static Map<id,Contact> lstMap =new Map<id,Contact>([SELECT Id,LastName,Parent_Contact__c,Level__c,Title FROM Contact]); 
    public static Map<id,Integer> lstChildCount= new Map<id,Integer>(); 
    @AuraEnabled
    public static List<Node> getContacts()
    {    
        for(Contact c:lstMap.values())
        {
         	if(c.Parent_Contact__c==null)
            {
               System.debug('Level: '+c.Level__c+' LastName: '+c.LastName);
                lstNode.add(new Node(c.LastName,c.Level__c,c.Title));
                //lstChildCount.put(c.id, 0);
                lstMap.remove(c.Id);
                getChildren(c.Id);
            }
        }
        return lstNode;
    }
    
    public static void getChildren(Id pid )
    {
        for(Contact c:lstMap.values())
        {
            if(c.Parent_Contact__c==pid)
            {
                System.debug('Level: '+c.Level__c+' LastName: '+c.LastName);
                lstNode.add(new Node(c.LastName,c.Level__c,c.Title));
                lstMap.remove(c.Id);
                getChildren(c.Id);
            }
        }
    }
    
    
    //Node Wrapper
    
    public class Node {
       @AuraEnabled public String LastName { get; set; }
        @AuraEnabled public String hasChild{get;set;}
       @AuraEnabled public String Level{get;set;}
       @AuraEnabled public String Title{get;set;}
        public Node(String LastName, String Level, String Title){
            this.LastName=lastName;
            this.Level=Level;
            this.Title=Title;
        }
    }
}