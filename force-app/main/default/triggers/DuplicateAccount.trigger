trigger DuplicateAccount on Account (before insert, before update) {

    Set<String> accounts = new Set<String>();
    for(Account ac :[SELECT Name FROM Account]){
       accounts.add(ac.name); 
    }
    for(Account acc: Trigger.new){
        if(accounts.contains(acc.Name)){
            acc.addError('Duplicate Account Name.');
        }
    }
}