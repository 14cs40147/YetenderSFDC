({
	doInit : function(component, event, helper) {
        window.setTimeout(
            $A.getCallback(function() {
                component.destroy();
            }), 1000
        );
	}
})