public without sharing class ParentClass {
	
    public static void check() {
        List<Detail__c> detailList = [SELECT Id, Name FROM Detail__c];
        System.debug('=====detailList=parent===='+detailList.size());
        System.debug('---result in parent class----'+ChildClass.childMethod().size());
    }
}