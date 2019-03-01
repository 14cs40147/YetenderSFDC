public class ContactTreeDemo {

    public static List<Contact> getContacts(String contactName){
        
        return [SELECT Id,Name,Account.Name FROM Contact WHERE LastName LIKE :'%'+contactName+'%' OR Account.Name =:contactName ];
    }
}