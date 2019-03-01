({
    toggle: function(component, event, helper) {
        component.set("v.expanded", !component.get("v.expanded"));
    },
    addChild: function(component, event, helper){
        console.log(event.target.getAttribute('id'));
        var modal = component.find("modal");
        $A.util.removeClass(modal, 'slds-hide');  
    },
    hideModal :function(component, event, helper){
         var modal = component.find("modal");
        $A.util.addClass(modal, 'slds-hide');
    }
})