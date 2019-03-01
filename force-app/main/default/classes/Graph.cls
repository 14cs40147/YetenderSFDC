public with sharing class Graph
{
    public List<PieWedgeData> getPieData()
    {
        List<PieWedgeData> data = new List<PieWedgeData>();
        List<Account> memb = new List<Account>();
   
        String sql = 'SELECT Name, AnnualRevenue FROM Account WHERE AnnualRevenue!=null';
        memb = Database.Query(sql);
        for(Account temp:memb)
        {      
            data.add(new PieWedgeData(temp.Name,temp.AnnualRevenue));
        }
        System.debug('Accounts with Data--->:'+JSON.serialize(data));
        return data;
    }

    // Wrapper class
    public class PieWedgeData
    {
        public String name { get; set; }
        public Decimal data { get; set; }
   
        public PieWedgeData(String name, Decimal data)
        {
            this.name = name;
            this.data = data;
        }
    }
}