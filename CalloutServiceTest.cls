@isTest 
public class CalloutServiceTest
{    
    @IsTest
    private static void doCallout(){

        Callout_Config__c config = new Callout_Config__c();
        config.Access_Token__c = 'OSidsoja8883-21';
        config.Client_ID__c = 'OSidsoja8883-21';
        config.Client_Secret__c = 'OSidsoja8883-21';
        config.Endpoint__c = 'api.test';
        config.Method__c = 'POST';
        config.Name = 'Serviço teste';
        config.Timeout__c = 5000;
        
        ContratoCalloutMock callout = new ContratoCalloutMock(config);
        CalloutService servico = new CalloutService(callout);
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());
        HttpResponse response = servico.doCallout();
    }
}