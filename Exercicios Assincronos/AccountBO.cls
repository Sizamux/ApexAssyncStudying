public with sharing class AccountBO {
    //Batch Exe 1
    public static void chamandoBatchEnderecoAccConta(){
        AccountContactsBatch accCtcsBatch = new AccountContactsBatch();
        Id batchId = Database.executeBatch(accCtcsBatch, 10);
        System.debug('batch id -'+ batchId);
    }
}