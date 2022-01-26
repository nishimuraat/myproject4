@isTest
public class LogManagerTest {
    @isTest static void testSetInfo()
    {
        LogManager.setInfo('This is a test');
        
        LogManager__c l = [select ID, Log_Type__c, Message__c from LogManager__c];
        System.assertEquals('INFO', l.Log_Type__c);
        System.assertEquals('This is a test', l.Message__c);
    }

    @isTest static void testSetErrorInfo()
    {
        try{
            String var1 = 'a';
            Integer var2 = Integer.valueOf(var1);
        }
        catch(Exception e)
        {
            LogManager.setErrorInfo(e);
        }

        LogManager__c l = [select ID, Log_Type__c, Message__c from LogManager__c];
        System.assertEquals('ERROR', l.Log_Type__c);
        System.assertEquals('Invalid integer: a', l.Message__c);
    }
}
