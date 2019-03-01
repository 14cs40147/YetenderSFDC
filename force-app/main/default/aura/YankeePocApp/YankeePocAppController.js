({
    doInit:function(component, event, helper) {
        var obj = [{label:'Project',active: true},{label:'User Story',active: false},{label:'Task',active: false},{label:'Sub Task',active: false}];
        component.set("v.path", obj);
    },
    
    activeStep : function(component, event, helper) {
        
        var obj = component.get("v.path");
        for(var key=0;key<obj.length;key++){
            obj[key].active = false;
        }
        obj[event.currentTarget.getAttribute('data-index')].active = true;
        console.log('Active Label: '+obj[event.currentTarget.getAttribute('data-index')].label);
        var activeSess = component.get("v.activeSection");
        
        var activeSessionLabel =obj[event.currentTarget.getAttribute('data-index')].label;
        activeSess.label = activeSessionLabel;
        activeSess.type='list';

        component.set("v.activeSection",  activeSess);
        component.set("v.path", obj);
        console.log(JSON.stringify(component.get("v.activeSection")));
    },
    
    addRecord : function(component, event, helper){
        var obj = component.get("v.path");
        var activeSess = component.get("v.activeSection");
        
        var activeSessionLabel =obj[event.currentTarget.getAttribute('data-index')].label;
        activeSess.label = activeSessionLabel;
        activeSess.type='new';

        component.set("v.activeSection",  activeSess);
       
        console.log(JSON.stringify(component.get("v.activeSection")));
    }
})