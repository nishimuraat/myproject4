public with sharing class LogManager {  

    // select ID, Log_Type__c, Message__c, Error_Message__c, Line__c, CreatedBy.Name, format(LastModifiedDate) from LogManager__c order by LastModifiedDate desc
    // で情報を取得
    public static void setInfo(string m)
    {
        LogManager__c lm = new LogManager__c();
        lm.Log_Type__c = 'INFO';
        lm.Message__c = m;
        insert lm; 
    }

    public static void setErrorInfo(Exception e)
    {
        LogManager__c lm = new LogManager__c();
        lm.Log_Type__c = 'ERROR';
        lm.Message__c = e.getMessage();
        lm.Error_Message__c = e.getStackTraceString();
        lm.Line__c = e.getLineNumber();

        insert lm; 
    }
}
