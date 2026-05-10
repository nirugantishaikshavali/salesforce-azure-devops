trigger ContactDefaultTrigger on Contact (before insert) {

    if(Trigger.isBefore && Trigger.isInsert){

        ContactDefaultHandler.setDefaultEmail(Trigger.new);

    }

}