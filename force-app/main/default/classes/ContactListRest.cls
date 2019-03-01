@RestResource(urlMapping='/api/ContactListRest/*')
global class ContactListRest {
	@HttpGet
    global static List<Contact> getContacts() {
         return [SELECT Id,Name FROM Contact];
    }
}