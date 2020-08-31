@isTest 
public class RetryFilaBatchTest 
{
    @isTest
    static void metodo()
    {
        insert(new Fila_de_Servicos__c (
            Protocol__c = 'REST'
            ,Request__c = ''
            ,Status__c = 'Erro'
            ,status_code__c = 400
            ,response__c = ''
            ,apex_error__c = ''
            ,service__c = 'ExemploRestService'
            ,Attempts_Number__c = 0
            ,Record_Id__c = '123456789123456'
        ));
        
        RetryFilaBatch batchClass = new RetryFilaBatch('Id'); 
        database.executebatch(batchClass,1);
       
    }
}