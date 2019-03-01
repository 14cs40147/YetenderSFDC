public class CSVDemoController {
    
    public void generateCSV(){
        String delimeter =',';
        String csvHeader = 'ID,ACCOUNT NAME, CONTACT NAME, OPPORTUNITY NAME';
        
        List<Account> lstAccount = [SELECT Id,Name,(SELECT Id, Name FROM Contacts),(SELECT Id, Name FROM Opportunities) FROM Account];
        
        String csvBody ='\n';
        
        for(Account acc : lstAccount){
            
            csvBody += acc.Id+delimeter+acc.Name+delimeter+delimeter+'\n';
            
            for(Contact cts : acc.Contacts){
                
                csvBody += cts.Id+delimeter+delimeter+cts.Name+'\n';
            }
            for(Opportunity op : acc.Opportunities){
                
                csvBody += op.Id+delimeter+delimeter+delimeter+op.Name+'\n';
            }
            
        }
        string csv = csvHeader+csvBody;
        Document doc = new Document();
        doc.Name = 'Shubham_Export.csv';
        doc.Type = 'csv';
        doc.contentType = 'application/xls';
        doc.folderId = UserInfo.getUserId();               
        doc.Body = Blob.valueOf('\uFEFF'+csv);                
        insert doc;   
        
        
        
        
    }
}