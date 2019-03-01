({
	loadComponent : function(component, event, helper, currentStep) {
        var componentName = currentStep == 1 ? 'WizardCmp1CMP' : currentStep == 2 ? 'WizardCmp2CMP' : currentStep == 3 ? 'WizardCmp3CMP' : currentStep == 4 ? 'WizardCmp4CMP' : 'WizardCmp5CMP';
       
        $A.createComponent(
            "c:"+componentName,
            {
                updateStep : component.getReference("c.loadCurrentStep"),
                currentStep : component.getReference("v.currentStep"),
                direction : component.getReference("v.direction")
            },
            function(msgBox){ 
                if (component.isValid()) {
                    var targetCmp = component.find('componentHolder');
                    var body = targetCmp.get("v.body");
                    body=[];
                    body.push(msgBox);
                    targetCmp.set("v.body", body); 
                    
                }
            }
        );
        
        var dots = [];
        for(var i=1; i<=5; i++){
            var isCurrentStep = false;
            var className = 'dot ';
            if(i==currentStep){
               isCurrentStep = true;
            }
            
            className+=  isCurrentStep == true ? 'active' : '';
            dots.push(className);
        }
        component.set("v.dotsList",dots);
	}
})