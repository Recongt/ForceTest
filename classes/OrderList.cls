/**
 * Created by Adam.Czyzynski on 16-Aug-17.
 */

public with sharing class OrderList {

    private String id = ApexPages.currentPage().getParameters().get('id');


    public User getUser(){
        User user = new User(AboutMe='asd', LastName='aas');
        return user;
    }
    public List<Order> getOrders() {
        Apexpages.currentPage().getHeaders().put('X-UA-Compatible', 'IE=edge');
        List<Order> orders = Database.query('SELECT Description, EndDate, Visit__c, Order_Value__c, Order__c, RecordType.Name, Id FROM Order WHERE AccountId=:id');
        return orders;

    }




}