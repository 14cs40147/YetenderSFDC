({
   
	updateStep : function(component, event, helper) {
		var action = event.currentTarget.getAttribute("data-action");
        component.set("v.currentStep",action == 'prev' ? component.get("v.currentStep") -1 : component.get("v.currentStep") +1);
        component.set("v.direction", action == 'prev' ? 'left' : 'right');
        $A.enqueueAction(component.get("v.updateStep"));
	}
})