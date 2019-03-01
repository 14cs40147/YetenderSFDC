({
	doSubmit : function(component, event, helper) {
		console.log(JSON.stringify(component.get("v.objInstance")));
	},
    doInit : function(component, event, helper) {
		component.set("v.objInstance.Phone",1234567890);
	}
})