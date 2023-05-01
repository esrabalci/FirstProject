public class Order {
  
   // STEP 1-create a fields FIRST;
   //because we'll describe an order that it should those 3 things
   //inside our constructor you want to set up all the value
   // so we got 3 instance variable to describe how order objection look like
    public String product;
    public String customerName;
    public Decimal price;

    // create a static field tax rate 
    public static Decimal taxRate ; 

    //STEP 2- create constructor
    // because we want to set up all the value was provided 
    //while object is being created into instance variable (from step 1)
    public Order(String product, String customerName, Decimal price) {
        this.product = product;
        this.customerName = customerName;
        this.price = price;
    }

    public void printOrder(){

        // this keyword represent the current object calling the method
        System.debug(this);
        // System.debug('tax rate is '  + taxRate  ); 
        // System.debug('Order:[customerName=' + this.customerName   
        //                     + ', price='    + this.price
        //                     + ', product='  + this.product   + ']');     
    }

    public static void showTaxRate(){
        System.debug('taxRate value is : ' + taxRate); 
    }

}