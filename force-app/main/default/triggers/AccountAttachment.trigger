trigger AccountAttachment on Attachment (before delete) {

    for(Attachment att : Trigger.old){
        if(att.ParentId.getSObjectType().getDescribe().getName()=='Account'){
          att.addError('Cannot delete Attachment!');  
        }
        
    }
}