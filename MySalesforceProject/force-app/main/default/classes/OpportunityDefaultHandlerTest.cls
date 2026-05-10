@isTest
public class OpportunityDefaultHandlerTest {

    @isTest
    static void testHighValueOpportunity(){

        Opportunity opp = new Opportunity(
            Name = 'Big Deal',
            StageName = 'Prospecting',
            CloseDate = System.today().addDays(10),
            Amount = 200000
        );

        insert opp;

        Opportunity insertedOpp = [
            SELECT Description
            FROM Opportunity
            WHERE Id = :opp.Id
        ];

        System.assertEquals(
            'High Value Opportunity',
            insertedOpp.Description
        );

    }

}