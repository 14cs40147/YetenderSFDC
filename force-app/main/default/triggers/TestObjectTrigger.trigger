trigger TestObjectTrigger on Satmetrix1__c (after insert)
{
    List<Temp_Satmetrix1__c> lst = new List<Temp_Satmetrix1__c>();
    
    for(Satmetrix1__c c : Trigger.new )
    {
        Temp_Satmetrix1__c t = new Temp_Satmetrix1__c();
        
        t.Status__c = c.Status__c;
        t.TextBox1__c = c.FormulaTextBox__c;
        t.Created_BY__c= 'Created by TRIGGER';
        t.Alphabet__c=PrintAlphabets.getAlphabets();
        lst.add(t);
    }
    insert lst;
}