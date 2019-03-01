public class TreeNodeDataProvider {
    @AuraEnabled public static Contact[] getUserRoles() {
        return [SELECT Id,LastName,Level__c,Parent_Contact__c,Title FROM Contact];
    }
}