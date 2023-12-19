public with sharing class EngagementActivityBatchClass implements Database.Batchable<sObject>{
    // start method
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT Id, Name FROM Account limit 5');
    }

    // execute method
    public void execute(Database.BatchableContext bc, List<Account> scope) {
        for (Account a : scope) {
              a.Name = 'Batch '+a.Name;
        }
        Update scope;
    }

    // finish method
    public void finish(Database.BatchableContext bc) {
        System.debug('Finished');
    }

    @auraEnabled
    public static void runBatch(){
        Database.executeBatch(new EngagementActivityBatchClass(),5);
    }
}