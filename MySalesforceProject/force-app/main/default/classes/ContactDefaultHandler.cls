public class ContactDefaultHandler {

    public static void setDefaultEmail(List<Contact> conList){

        for(Contact con : conList){

            if(String.isBlank(con.Email)){

                con.Email = 'default@test.com';

            }

        }

    }

}