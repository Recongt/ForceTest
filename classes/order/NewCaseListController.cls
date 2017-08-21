/**
 * Created by Adam.Czyzynski on 8/8/2017.
 */

public with sharing class NewCaseListController {

    public List<Case> getNewCases() {

        List<Case> results = [SELECT CaseNumber, Status FROM Case WHERE status='New'];
        return results;
    }
}