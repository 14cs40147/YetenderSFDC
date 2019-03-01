global virtual class PackageController {
    
    global String pName{get;set;}
    global Integer pAge{get;set;}
    global String pHome{get;set;}
    
    global PackageController(){
        pName = 'Sumit';
        pAge = 25;
        pHome = 'Varanasi';
    }
}