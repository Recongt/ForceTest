/**
 * Created by Adam.Czyzynski on 8/8/2017.
 */

public with sharing class ContactsListController {
    private String sortOrder = 'LastName';

    public void sortByLastName(){
        this.sortOrder = 'LastName';
    }
    public void sortByFirstName(){
        this.sortOrder = 'FirstName';
    }

    public List<Contact> getContacts() {

        List<Contact> results = Database.query(
                'SELECT Id, FirstName, LastName, Title, Email ' +
                        'FROM Contact ' +
                        'ORDER BY ' + sortOrder + ' ASC ' +
                        'LIMIT 10'
        );
        return results;
    }

    public Contact getCos(){
        List<Contact> results = Database.query(
                'SELECT Id, FirstName, LastName, Title, Email ' +
                        'FROM Contact ' +
                        'ORDER BY ' + sortOrder + ' ASC ' +
                        'LIMIT 10'
        );
        return results.get(0);
    }

}