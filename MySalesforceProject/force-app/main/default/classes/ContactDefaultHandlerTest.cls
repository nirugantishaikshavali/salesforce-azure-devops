@isTest
public class ContactDefaultHandlerTest {

    @isTest
    static void testDefaultEmail(){

        Contact con = new Contact(
            LastName = 'Test Contact'
        );

        insert con;

        Contact insertedCon = [
            SELECT Id, Email
            FROM Contact
            WHERE Id = :con.Id
        ];

        System.assertEquals(
            'default@test.com',
            insertedCon.Email
        );

    }

}