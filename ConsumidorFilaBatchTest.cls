@isTest 
public class ConsumidorFilaBatchTest 
{
    @isTest
    static void metodo()
    {
        insert(new Fila_de_Servicos__c (
            Protocol__c = 'REST'
            ,Request__c = ''
            ,Status__c = 'Novo'
            ,status_code__c = 0
            ,response__c = ''
            ,apex_error__c = ''
            ,service__c = 'ServiceTest'
            ,Attempts_Number__c = 0
        ));
        
        ConsumidorFilaBatch batchClass = new ConsumidorFilaBatch('Id');
        batchClass = new ConsumidorFilaBatch();
        database.executebatch(batchClass,1);
       
    }
}