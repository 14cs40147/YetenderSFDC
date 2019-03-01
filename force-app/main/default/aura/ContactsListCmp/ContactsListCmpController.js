({
	doInit : function(component, event) {
        component.set("v.callController",true);
        var action = component.get("c.getContacts");
        action.setParams ({acc:component.get("v.activeAccount") })
        action.setCallback(this, function(a) {
            component.set("v.cList", a.getReturnValue());
        });
        $A.enqueueAction(action);
        component.set("v.callController",false);
    },
    activeAccount : function(component, event){
        
        var dIndex = event.target.getAttribute('data-index');
        component.set("v.activeAccount",component.get("v.accList")[dIndex]);
        $A.enqueueAction(component.get("v.activateContacts"));
        //component.destroy();
    }
})