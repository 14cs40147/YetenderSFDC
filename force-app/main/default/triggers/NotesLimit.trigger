trigger NotesLimit on Note (before insert) {
    
    
    System.debug('No of Notes:'+trigger.new.size());
    
}