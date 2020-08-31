@IsTest
public class FilaServidorQueueableTest 
{       
    @IsTest
    public static void metodo() 
    {
        Fila_de_Servicos__c fs = (new Fila_de_Servicos__c (
            Protocol__c = 'REST'
            ,Request__c = ''
            ,Status__c = 'Novo'
            ,status_code__c = 0
            ,response__c = ''
            ,apex_error__c = ''
            ,service__c = 'ExemploRestService'
            ,Attempts_Number__c = 0
        ));
        
        System.enqueueJob(new FilaServidorQueueable(fs,fs.Service__c));
    }
}