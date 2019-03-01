({
    activateAccount : function(component, event, helper) {
        component.set("v.callController",true);
        var targetCmp = component.find('AccountListHolder');
        targetCmp.set("v.body", []); 
        $A.createComponent(
            "c:AcclountListCmp",
            {
                activateContacts :component.getReference("c.activateContact"),
                activeAccount : component.getReference("v.activeAccount")
            },
            function(msgBox){ 
                if (component.isValid()) {
                    var targetCmp = component.find('AccountListHolder');
                    var body = targetCmp.get("v.body");
                    body.push(msgBox);
                    targetCmp.set("v.body", body); 
                     component.set("v.callController",false);
                }
            }
        );  
    },
    activateContact : function(component, event, helper){
        var targetCmp = component.find('ContactListHolder');
        targetCmp.set("v.body", []); 
        $A.createComponent(
            "c:ContactsListCmp",
            {
                activeAccount : component.getReference("v.activeAccount")
            },
            function(msgBox){ 
                if (component.isValid()) {
                    var targetCmp = component.find('ContactListHolder');
                    var body = targetCmp.get("v.body");
                    body.push(msgBox);
                    targetCmp.set("v.body", body); 
                }
            }
        );
    }
})