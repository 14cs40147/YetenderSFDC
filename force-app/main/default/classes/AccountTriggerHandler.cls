public class AccountTriggerHandler {
    
    Static List<Account> lstAccount = new List<Account>();
    public static void updateAddress(List<Account> lstAcc)
    {
        set<Id> setAccid = new Set<id>();
        for(Account a : lstAcc)
        {
            setAccid.add(a.id);
        }
        //String sQuery= 'Select Id, BillingCity, ShippingCity,Billing_address_Same_as_Shipping_Address__c from Account where id IN:'+setAccid+';
    	List<Account> lstAcc1 = [Select ID,BillingCity, ShippingCity ,Billing_address_Same_as_Shipping_Address__c from Account where id IN: SetAccid ];
        System.debug('lstAcc1+++'+lstAcc1);
        for(Account a1:lstAcc1)
        {
            if(a1.Billing_address_Same_as_Shipping_Address__c == true)
            {
                a1.ShippingCity = a1.BillingCity;
                lstAccount.add(a1);
            }
        }
        if(lstAccount.size()>0)
            update lstAccount;
    }

}