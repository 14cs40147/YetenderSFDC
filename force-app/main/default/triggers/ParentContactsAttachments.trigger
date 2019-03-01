trigger ParentContactsAttachments on Attachment (after insert) {
   Map<Id,List<Attachment>> accCon = new Map<Id,List<Attachment>>();
    
    for(Attachment att : Trigger.new){
        
        if(att.ParentId.getSObjectType().getDescribe().getName()=='Account'){
            
            if(accCon.containsKey(att.ParentId) ){
                List<Attachment> atts;
                try{
                    atts = accCon.get(att.ParentId);    
                }catch(Exception e){}
                if(atts !=null){
                    atts.add(att);  
                }else{
                    atts = new   List<Attachment>();
                    atts.add(att);  
                }
                accCon.put(att.ParentId,atts); 
            }else{
                accCon.put(att.ParentId, new List<Attachment>{att});
            }  
        }
    }
    
    List<Attachment> contactsAtt = new List<Attachment>();
    for(Account acc :[SELECT id, (SELECT Id FROM Contacts) FROM Account WHERE Id IN:accCon.keySet()] ){
        if(accCon.containsKey(acc.id) && acc.contacts.size() >0){
            for(Contact con : acc.Contacts){
                    for(Attachment att : accCon.get(acc.id)){
                    	Attachment at = att.clone(false,true);
                        at.ParentId =con.Id;
                        contactsAtt.add(at);
                    }
                }
            }
        }
    
    if(contactsAtt.size()>0) 
        Insert contactsAtt;
}