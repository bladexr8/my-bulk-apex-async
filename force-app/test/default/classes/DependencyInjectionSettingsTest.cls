
/**
 * @description Tests for Dependency Injection Management
 * @author Stephen Moss
 * @date 22nd August 2021
 */
@isTest
public class DependencyInjectionSettingsTest {
    
    @isTest static void getActiveServiceList_successful() {
        Map<String,String> serviceList = DependencyInjectionSettings.getActiveServiceList('Default', 'Default');
        System.assert(1, serviceList.size());
    }
}
