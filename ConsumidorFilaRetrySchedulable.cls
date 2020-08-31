/**
 * @File Name          : ConsumidorFilaRetrySchedulable.cls
 * @Description        : 
 * @Author             : C3C
 * @Group              : 
 * @Last Modified On   : 7/8/2020
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    7/8/2020           c3csoftware.com.br     Initial Version
**/
global class ConsumidorFilaRetrySchedulable implements schedulable
{  
    global void execute(SchedulableContext sc) 
    {  
        RetryFilaBatch batchClass = new RetryFilaBatch(sc.getTriggerId()); 
        database.executebatch(batchClass,1);
    }
    
}