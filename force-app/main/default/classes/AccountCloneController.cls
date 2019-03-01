public class AccountCloneController {

    public static String cloneAccount(String accountId){
        
        Account account = [SELECT Id, Name, Type, BillingStreet, BillingCity, BillingState, BillingPostalCode, BillingCountry, BillingLatitude, BillingLongitude,
                           BillingGeocodeAccuracy, BillingAddress, ShippingStreet, ShippingCity, ShippingState, ShippingPostalCode, ShippingCountry, ShippingLatitude, 
                           ShippingLongitude, ShippingGeocodeAccuracy, ShippingAddress, Phone, Fax, AccountNumber, Website, PhotoUrl, Sic, Industry, AnnualRevenue,
                           NumberOfEmployees, Ownership, TickerSymbol, Description, Rating, Site, Jigsaw, JigsawCompanyId, CleanStatus, AccountSource, DunsNumber,
                           Checkbox2__c, Checkbox1__c, Number_of_Contacts__c, Match_Billing_Address__c, Parent_Account__c, Billing_address_Same_as_Shipping_Address__c,
                           SLAExpirationDate__c, SLASerialNumber__c, UpsellOpportunity__c, NumberofLocations__c, Active__c, SLA__c, CustomerPriority__c, SicDesc,
                           YearStarted, NaicsDesc, NaicsCode, Tradestyle FROM Account WHERE Id =:accountId];
       Account accountClone = account.clone(false,true);
        
        return null;
    }
}