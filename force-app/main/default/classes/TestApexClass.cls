public class TestApexClass {
	
   public TestApexClass(){
        
       System.debug('Inside Constructor()');
   }
   
    Integer i =100;
    Double d;
    Boolean b;
    String s;
    Id id_Type;
	Date dt;
	DateTime dtTime;
    //Instance Block
    {
        d = 100;
       System.debug('Im inside Instace Block ()'); 
    } 
     
    
      
    //Static block
    static{
        
        System.debug('Im inside static Block ()');
    }
    
}