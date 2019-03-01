trigger TestObject2 on Test_Object2__c (before insert)
 {
    List<Test_Object2__c > lst = new List<Test_Object2__c >();
    List<Test_Object2__c > lstnew = new List<Test_Object2__c >();
    for(Test_Object2__c c:Trigger.new)
    {
        lst.add(c);
    }
    
    for(Test_Object2__c c: lst)
    {
        Test_Object2__c cn=new Test_Object2__c();
        cn.Name__c=c.Name__c+'1';
        cn.Test_Object1__c=c.Test_Object1__c;
        lstnew.add(cn);
    }
    insert lstnew;

}