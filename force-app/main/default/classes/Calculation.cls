public  class Calculation 
{
    public Integer a{get;set;}
    public Integer b{get;set;}
    public Decimal result{get;set;}
    
    public void addition()
    {
        result=a+b;
    }
    	
    public void subtract()
    {
            if(a>b)
            {
                result=a-b;
            }
            else
            {
                result=b-a;
            }
    }
    public void multiplication()
    {
        result=a*b;
    }
    public void division()
    {
        if(b!=0)
        {
            result=a/b;
        }
        else
        {
            result=0;
        }
    }
    public void reset()
    {
        a=null;
        b=null;
        result=null;
    }
}