public class AccountTableController {

    
    public AccountTableController(){
        
        if(String.isNotBlank(apexpages.currentpage().getparameters().get('id'))){
            generateTable(apexpages.currentpage().getparameters().get('id'));
        }
    }
    
    private void generateTable(String recordId){
      
        
    }
    
}