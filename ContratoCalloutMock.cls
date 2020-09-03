public class ContratoCalloutMock extends CalloutContract
{    
    public ContratoCalloutMock(Callout_Config__c config)
    {
        super(config);
    }
    
    public override Object getReturn(System.HttpResponse response)
    {
        return response.getBody();
    }
}