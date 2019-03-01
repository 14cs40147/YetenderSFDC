public class SumOfIntegers {

    public List<NumberWrapper> lstNumWrapper{get;set;}
    public static Integer countSum{get;set;}
    public Boolean showResult{get;set;}
    public SumOfIntegers(){
        
        showResult = false;
        lstNumWrapper = new List<NumberWrapper>();
        for(Integer i=1; i<=10; i++){
            lstNumWrapper.add(new NumberWrapper(i));
        }
        
    }
    
    public pageReference process(){
        
		countSum = 0;
        for(NumberWrapper numWrap : lstNumWrapper){
            if(numWrap.isChecked){
                countSum = countSum+numWrap.count;
            }
        } 
        showResult = true;
        return null;
    }
    
    public class NumberWrapper{
        public Integer count{get;set;}
        public Boolean isChecked{get;set;}
        public NumberWrapper(Integer count){
            this.count = count;
        }
    }
}