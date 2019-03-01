public class theController {

public theController(){

ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Info, 'First Error Message added from apex'));
ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error, 'Second Error Message added from apex'));

}
}