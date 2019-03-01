({
    doInit: function(component, event, helper) {
        var page = component.get("v.page") || 1;
        var recordToDisply = 4;
        helper.getAccounts(component, page, recordToDisply);
    },
    
    previousPage: function(component, event, helper) {
        
        var page = component.get("v.page") || 1;
        var direction = event.getSource().get("v.label");
        var recordToDisply = 4;
        page = direction === "Previous Page" ? (page - 1) : (page + 1);
        helper.getAccounts(component, page, recordToDisply);
    },
    
    nextPage: function(component, event, helper) {
        var page = component.get("v.page") || 1;
        var direction = event.getSource().get("v.label");
        var recordToDisply = 4;
        page = direction === "Previous Page" ? (page - 1) : (page + 1);
        helper.getAccounts(component, page, recordToDisply);
    },
    
    
})