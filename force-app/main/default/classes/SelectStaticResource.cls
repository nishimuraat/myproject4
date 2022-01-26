public with sharing class SelectStaticResource {
    public static List<SelectStaticResource__c> getStaticResource() {
        return [select Name, Age__c from SelectStaticResource__c];
    }
}
