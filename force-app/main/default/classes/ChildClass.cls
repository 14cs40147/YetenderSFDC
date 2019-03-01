public with sharing class ChildClass {
    
    public static List<Detail__c> childMethod(){
        List<Detail__c> detailList = [SELECT Id, Name FROM Detail__c];
        System.debug('=====detailList child====='+detailList.size());
        return detailList;
    }
}