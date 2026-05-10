public class OpportunityDefaultHandler {

    public static void setDefaultValues(List<Opportunity> oppList){

        for(Opportunity opp : oppList){

            if(opp.Amount != null && opp.Amount > 100000){

                opp.Description = 'High Value Opportunity';

            }

        }

    }

}