({
    sectionHideShow : function(component, event, helper) {
        /*var acc = component.find("articleOne");
        for(var cmp in acc) {
            $A.util.toggleClass(acc[cmp], 'slds-show');  
            $A.util.toggleClass(acc[cmp], 'slds-hide');          
        }*/
        
        var eid = event.currentTarget.getAttribute("id"); 
        var divsToHide = document.getElementsByClassName(eid); 
        console.log('--eid--'+eid);
        for(var i = 0; i < divsToHide.length; i++){            
            if(divsToHide[i].classList.contains("slds-show")){
                divsToHide[i].classList.remove("slds-show");
                divsToHide[i].classList.add("slds-hide");
            }    
            else{
                divsToHide[i].classList.add("slds-show");
                divsToHide[i].classList.remove("slds-hide");
               
            }
        }            
    }
 })