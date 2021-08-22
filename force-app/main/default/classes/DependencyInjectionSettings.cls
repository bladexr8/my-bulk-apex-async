/**
 * @description Dependency Injection Management
 * @author Stephen Moss
 * @date 22nd August 2021
 */
public with sharing class DependencyInjectionSettings {

    /**
     * @description retrieve dependency injection
     *              info from Custom Metadata
     * @parameter serviceType - type of service
     * @parameter serviceSubType - subtype of service
     * @parameter returnActiveServicesOnly - flag whether to return only active services
     * @return Map of Service Implementation objects
     *         representing active concrete implementations of
     *         requested types
     */
    public static Map<String,String> getActiveServiceList(String serviceType, String serviceSubType) {

        // validate criteria has been sent
        if (serviceType == null || serviceSubType == null) {
            throw new DependencyServiceException('Service Type and Sub Type must be supplied');
        }

        // retrieve custom metadata
        List<Service_Injection_Setting__mdt> serviceList = 
            [SELECT Id, Service_Type__c, Service_Subtype__c, Apex_Class__c, Active__c
             FROM Service_Injection_Setting__mdt
             WHERE Service_Type__c = :serviceType
             AND Service_Subtype__c = :serviceSubType
             AND Active__c = True];

        // check if any services returned
        if (serviceList.size() == 0) {
            throw new DependencyServiceException('No Dependency Injection Services Available for supplied criteria.');
        }

        // build the map to return
        Map<String, String> serviceMap = new Map<String,String>();
        for (Service_Injection_Setting__mdt s : serviceList) {
            String mapKey = s.Service_Type__c + '.' + s.Service_Type__c;
            serviceMap.put(mapKey, s.Apex_Class__c);
        }

        return serviceMap;
    }

    /**
     * @description custom exception class
     */
    public class DependencyServiceException extends Exception {}

}
