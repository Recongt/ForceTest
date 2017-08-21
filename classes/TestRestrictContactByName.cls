/**
 * Created by Adam.Czyzynski on 8/7/2017.
 */

@IsTest
private class TestRestrictContactByName {

    @IsTest public static void shouldReturnInvalidName() {
        Contact contact = new Contact(LastName = 'INVALIDNAME', FirstName = 'Good Name');
        Test.startTest();
        Database.SaveResult saveResult = Database.insert(contact, false);

        Test.stopTest();
        System.assert(!saveResult.isSuccess());
        System.assert(saveResult.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', saveResult.getErrors()[0].getMessage());

    }

    @IsTest
    public static void shouldReturnCorrectName(){
        Contact contact = new Contact(LastName = 'Good', FirstName = 'Good Name');
        Test.startTest();
        Database.SaveResult saveResult = Database.insert(contact, false);

        Test.stopTest();
        System.assert(saveResult.isSuccess());
        System.assert(saveResult.getErrors().size() == 0);

    }
}