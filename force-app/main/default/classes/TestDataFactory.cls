public class TestDataFactory 
{
    public static Account CreateAccount(String sName, String sRating)
    {
        Account acc = new Account(Name= sName, Rating= sRating);
        return acc;
    }

}