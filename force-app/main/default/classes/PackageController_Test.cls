@isTest
private class PackageController_Test {
    
    @isTest 
    static void ChildPackageControllerTest(){
        PackageController obj = new PackageController();
        System.assertEquals('Sumit', obj.pName);
        System.assertEquals(25, obj.pAge);
        System.assertEquals('Varanasi', obj.pHome);
        
    }
    
    
}