@isTest
public class SelectStaticResourceTest {
    @isTest static void  testGetStaticResource() {

        Test.loadData(SelectStaticResource__c.sObjectType, 'sample_data');
        List<SelectStaticResource__c> dtlist = SelectStaticResource.getStaticResource();
        
        System.assertEquals(dtlist.size(), 3);

        for(SelectStaticResource__c dt : dtlist)
        {
            if(dt.Name == 'test1')
            {
                System.assertEquals(dt.Age__c, 18);
            }

            if(dt.Name == 'test2')
            {
                System.assertEquals(dt.Age__c, 19);
            }

            if(dt.Name == 'test3')
            {
                System.assertEquals(dt.Age__c, 20);
            }
        }

    }
}
