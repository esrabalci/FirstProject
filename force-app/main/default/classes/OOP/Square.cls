public class Square extends Rectangle {
  /**
      *  Create a child class of Rectangle - class Square 
   * instance fields : 
     - side as Decimal 
   * constructor 
     - 2 arg constructor to set 
       - name, side
       - call parent 3 arg constructor as below
       - super(name,side,side)
      */

  //public Decimal side; // we did protected in the Rectangle class width and height so we don't need to use this version
  //public Decimal area ;

  public Square(String name, Decimal side) {
    // using Square constructor to
    // super(name, side, side);
    // this.side = side;
    this.name = name ; 
    this.width = side ; 
    this.height = side ;
  }

  public override void draw() {
    System.debug('Drawing awesome Square');
  }
}
