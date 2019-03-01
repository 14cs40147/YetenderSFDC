({
    createChart : function(component) {
        
        var action = component.get("c.runReport");
        action.setCallback(this, function(a){
            var jsonRetVal = JSON.parse(a.getReturnValue()); 
            var radarChartData = {
                labels: jsonRetVal.radarLabels,
                datasets: [
                    { 
                        backgroundColor: ['red', 'blue', 'green' , 'orange'],
                        data: jsonRetVal.radarData
                    }
                ]
                
            };
            
            var el = component.find('radarChart').getElement();
            var ctx = el.getContext('2d');
            new Chart(ctx, {
                type: "doughnut",
                data: radarChartData,
                
                
                
            });
            
        });
        $A.enqueueAction(action); 
    },



})