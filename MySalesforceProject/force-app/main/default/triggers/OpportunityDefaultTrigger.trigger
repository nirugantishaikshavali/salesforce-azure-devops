trigger OpportunityDefaultTrigger on Opportunity (before insert) {
if(Trigger.isBefore && Trigger.isInsert){

        OpportunityDefaultHandler.setDefaultValues(Trigger.new);

    }
}