({
	removeRow : function(component, event, helper) {
		component.set("v.currIndex",component.get("v.index"));
        var pMethod = component.get("v.pRemoveItemMethod");
        console.log('----->'+component.get("v.currIndex"))
        $A.enqueueAction(pMethod); 
	}
})