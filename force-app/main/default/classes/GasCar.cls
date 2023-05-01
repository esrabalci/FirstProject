/** 
    // GasCar
    *     fields : 
            tankCapacity
 *     constructor :      
           3 parameters constructor to set model, price and tankCapacity
*/

public class GasCar extends Car {
  public Integer tankCapacity;

  public GasCar(String model, Decimal price, Integer tankCapacity) {
    super(model, price);
    this.tankCapacity = tankCapacity;
  }

  /**
 Create override version of the drive method
 to print different message
 */
  public override void drive() {
    System.debug('Car ' + this.model + ' is driving on Gas');
  }

  /**

 Add a method called fillUpGas 
 accept no param, return nothing
 simply print out --> CarModelHere + ' is filling up Gas'

 */

  public void fillUpGas() {
    System.debug(this.model + ' is filling up Gas');
  }
}
