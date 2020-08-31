@isTest 
public class ConsumidorFilaSchedulableTest 
{
    @isTest
    static void metodo()
    {
        system.schedule('Job teste','00 00 00 * * ?',new ConsumidorFilaSchedulable());
    }
}