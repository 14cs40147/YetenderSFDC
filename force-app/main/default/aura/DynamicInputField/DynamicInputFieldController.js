({
	display : function(component, event, helper) {
		var arr = [];
        
        for(var i=0; i< component.find("num").get("v.value"); i++){
            arr[i] = i;
        }
        component.set("v.inputs", arr);
	},
    displayResult : function(component, event, helper){
      
        var total = 0;
         var inputs = document.getElementsByClassName("input");
        debugger;
        console.log(inputs);
    }
})