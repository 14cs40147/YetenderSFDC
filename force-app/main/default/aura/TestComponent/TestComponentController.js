({
	showIds : function(component, event, helper) {
		
        var navEvt = $A.get("e.force:navigateToSObject");
        alert(navEvt);
        navEvt.setParams({
            "recordId": '0037F00000iYhfh'
        });
        navEvt.fire();
	}
})