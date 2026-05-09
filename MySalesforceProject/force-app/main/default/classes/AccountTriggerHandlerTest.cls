@isTest
private class AccountTriggerHandlerTest {

    @isTest
    static void testBankingIndustry() {

        Account acc = new Account(
            Name = 'Test Account',
            Industry = 'Banking'
        );

        insert acc;

        Account insertedAcc = [
            SELECT Id, Rating
            FROM Account
            WHERE Id = :acc.Id
        ];

        System.assertEquals('Hot', insertedAcc.Rating);
    }
}