public class ContactAndLeadSearch {

    public static List<List<sObject>> searchContactsAndLeads(String searchString){
        
        String searchQuery = 'FIND \''+searchString+' \' IN ALL FIELDS RETURNING Contact(FirstName,LastName WHERE FirstName=\''+searchString+'\' OR LastName= \''+searchString+'\'), Lead(FirstName,LastName WHERE FirstName=\''+searchString+'\' OR LastName= \''+searchString+'\')';
        return search.query(searchQuery);
    }
}