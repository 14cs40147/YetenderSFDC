({
    doInit : function(component, event, helper) {
        
        var totalPageURL = window.location.toString();
        var protocalType= totalPageURL.split("//")[0];
        var tempbaseURL = totalPageURL.split("//")[1].split("/");
        var finalBaseURL = protocalType+'//'+tempbaseURL[0];
        finalBaseURL = '/lightning/r/Contact/'+component.get("v.recordId")+'/view';
        component.set("v.baseURL",finalBaseURL);
       
        var eve = $A.get("e.force:createRecord");
        
        eve.setParams({
            "entityApiName": "Contact",
        });
        eve.fire();
        
    },
    toastInfo : function(component, event, helper){
        
        window.location.href = component.get("v.baseURL");
    }
})