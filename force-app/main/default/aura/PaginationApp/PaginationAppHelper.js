({
    getAccounts: function(component, page, recordToDisply) {
        component.set("v.callController",true);
        var action = component.get("c.fetchAccount");
        action.setParams({
            "pageNumber": page,
            "recordToDisply": recordToDisply
        });
        action.setCallback(this, function(a) {
            var result = a.getReturnValue();
            console.log('result ---->' + JSON.stringify(result));
            component.set("v.Accounts", result.accounts);
            component.set("v.page", result.page);
            component.set("v.total", result.total);
            component.set("v.pages", Math.ceil(result.total / recordToDisply));
            component.set("v.callController",false);
        });
        $A.enqueueAction(action);
    }
})