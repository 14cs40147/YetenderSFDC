({
	clickMe : function(component, event, helper) {
        var action=component.get("v.clickMe");
        component.destroy();
		$A.enqueueAction(action);
	}
})