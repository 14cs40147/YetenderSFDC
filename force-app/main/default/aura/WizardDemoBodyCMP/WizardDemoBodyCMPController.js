({
	doInit : function(component, event, helper) {
		
        helper.loadComponent(component, event, helper, component.get("v.currentStep"));
	},
    loadCurrentStep : function(component, event, helper){
        helper.loadComponent(component, event, helper, component.get("v.currentStep"));
    }
})