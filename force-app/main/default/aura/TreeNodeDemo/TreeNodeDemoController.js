({
    init: function(component, event, helper) {
        var action = component.get("c.getUserRoles");
        action.setCallback(this, function(response) {
            var roles = {}, results;
            if(component.isValid() && response.getState() === "SUCCESS") {
                results = response.getReturnValue();
                //console.log("Response from Server--->"+JSON.stringify(response.getReturnValue()));
                roles[undefined] = { Name: "Root",Level:'0%',items: [] };
                results.forEach(function(v) {
                    roles[v.Id] = { Name: v.LastName,Id:v.Id,Title:v.Title,Level:v.Level__c, items: [] };
                });
                results.forEach(function(v) {
                    roles[v.Parent_Contact__c].items.push(roles[v.Id]);
                });
                component.set("v.nodes", roles[undefined].items);
                console.log(JSON.stringify(roles));
            } else {
                alert(response.getError());
            }
        });
        $A.enqueueAction(action);
    }
})