trigger AccountAddressTrigger on Account (before insert, before update) {
    
    
    for(Account acc : trigger.new){
        
        if(acc.Match_Billing_Address__c == true ){
            acc.ShippingCity = acc.BillingCity ;
            acc.ShippingCountry = acc.BillingCountry ;
            acc.ShippingPostalCode = acc.BillingPostalCode;
            acc.ShippingStreet = acc.BillingStreet ;
            acc.ShippingState = acc.BillingState;
        }
    }
    
}