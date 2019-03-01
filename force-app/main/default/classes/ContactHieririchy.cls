public class ContactHieririchy {

    private static Integer index=1;
    public List<ContactWrapper> lstWrapper{get;set;}
    public class ContactWrapper
    {
        public String cName{get;set;}
        public id cId{get;set;}
        public ContactWrapper(String cName,String cId,Integer index)
        {
            this.cId=cId;
            String spaceCount = '';
            for(integer i = 0 ; i < index ; i++)
                   spaceCount = spaceCount  + '&nbsp;&nbsp;';
       
            this.cName = spaceCount + cName;
        }
    }
    
    public static Map<id,Contact> lstMap =new Map<id,Contact>([SELECT Id,LastName,Parent_Contact__c FROM Contact]); 
    public ContactHieririchy()
    {
        lstWrapper = new List<ContactWrapper>();
        for(Contact c:lstMap.values())
        {
            if(c.Parent_Contact__c==null)
            {
                lstWrapper.add(new ContactWrapper(c.LastName,c.Id,1));
                lstMap.remove(c.Id);
                getChildren(c.id);
            }
        }
        System.debug('lstWrapper:----->'+lstWrapper);
    }
    public  void getChildren(Id pid)
    {
        index=index+1;
        for(Contact c:lstMap.values())
        {
            if(c.Parent_Contact__c==pid)
            {
                lstWrapper.add(new ContactWrapper(c.LastName,c.Id,index));
                
                lstMap.remove(c.id);
                getChildren(c.id);                
            }
        }
        index=index-1;
    }
}