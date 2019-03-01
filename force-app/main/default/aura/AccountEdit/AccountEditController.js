({
    editRecord : function(component, event, helper) {
        var createRecordEvent = $A.get("e.force:createRecord");
    createRecordEvent.setParams({
        "entityApiName": "Account"
    });
    createRecordEvent.fire();
        
    },
    isRefreshed :function(component, event, helper){
        $A.enqueueAction(component.get("v.refreshAccounts"));
    }
})