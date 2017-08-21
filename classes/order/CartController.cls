/**
 * Created by Adam.Czyzynski on 14-Aug-17.
 */

public with sharing class CartController {

    private Account orderOwner;

    private List<OrderItem> orderProduct2s;

    private List<Product2> availableProduct2s;

    private Order order;

    private Visit__c visit;

    public void createNewOrder(Order order, Account account, Visit__c visit){
        this.orderOwner = account;
        this.visit = visit;
        this.order = order;
    }

    public void addNewProductToOrder(OrderItem orderItem){
        orderProduct2s.add(orderItem);
    }

    public List<Product2> getProduct2s(){

        return this.sampleData();
    }


    private List<Product2> sampleData(){
        List<Product2> product2s = Database.query('SELECT Name, Id, gross__c, net__c, quantity__c FROM Product2');
        return  product2s;
    }

public List<Product2> getAvailableProductList(){
return null;
        }

}