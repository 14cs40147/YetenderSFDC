public class ContactController {

    @AuraEnabled
    public static List<Contact> getContacts(String searchkeyword)
    {
        String searchkey=searchkeyword+'%';
        list<Contact> lstCont=new List<Contact>();
        for(Contact c:[SELECT id,LastName FROM Contact WHERE LastName LIKE :searchkey])
        {
            lstCont.add(c);
        }
        return lstCont;
    }
    
    @AuraEnabled
    public static List<Contact> fetchContacts()
    {
        return [SELECT Id,FirstName,LastName,Email,Phone From Contact];
    }
}