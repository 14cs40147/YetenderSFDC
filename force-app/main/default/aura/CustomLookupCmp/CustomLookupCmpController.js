({
   selectRecord : function(component, event, helper){      
    var getSelectRecord = component.get("v.record");
       component.set("v.selectedRecord",getSelectRecord);
       console.log("v.selectedRecord"+JSON.stringify(component.get("v.selectedRecord")));
     $A.enqueueAction(component.get("v.handleComponentEvent"));  
   },
})