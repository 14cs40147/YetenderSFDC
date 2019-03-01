({
    doInit : function(component, event, helper) {
  
        var action = component.get("c.fetchContacts");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                //alert(JSON.stringify(response.getReturnValue()));
                component.set("v.cts",response.getReturnValue());
               }
            else if (state === "INCOMPLETE") {
               
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
        $A.enqueueAction(action);
  		var a = component.get('c.toggle');
        $A.enqueueAction(a);
              
    },
     toggle: function (cmp, event) {
        var spinner = cmp.find("spinner");
        $A.util.toggleClass(spinner, "slds-hide");
    }
})