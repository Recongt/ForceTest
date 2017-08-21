/**
 * Created by Adam.Czyzynski on 8/9/2017.
 */

public with sharing class VisitsListController {

    private List<Visit__C> visits = new List<Visit__C>();

    public List<Visit__c> getVisits(){
        List<Visit__c> results = [SELECT Finished__c, Date__c, CreatedById, Name
                FROM Visit__c
            //    WHERE Account__c=:UserInfo.getUserId()
        ];
        return results;
    }



}