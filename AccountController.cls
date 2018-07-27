public class AccountController {
@AuraEnabled
    public static List<Account> getAccounts(){
        return [SELECT
               Id, Name, Phone, Rating, My_Custom_Field__c
               FROM Account LIMIT 200];
    }

    @AuraEnabled
    public static boolean updateAccounts(List<Account> editedAccountList){
        try{
            update editedAccountList;
            return true;
        } catch(Exception e){
            return false;
        }
    }
}