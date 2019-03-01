public class ScheduleBatch11 implements schedulable {
    
    public void execute(SchedulableContext sc)
    {
        Batchclass11 objBatch11 = new Batchclass11();
        Database.executeBatch(objBatch11, 200);
    }

}