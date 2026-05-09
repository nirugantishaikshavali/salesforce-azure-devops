public class AccountTriggerHandler {

    public static void handleBefore(List<Account> accounts) {

        for(Account acc : accounts) {

            if(acc.Industry == 'Banking') {
                acc.Rating = 'Hot';
            }
        }
    }
}