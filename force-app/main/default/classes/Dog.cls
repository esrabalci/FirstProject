public class Dog extends Animal{

   //breed
   public String breed;

    //constructor to set 3 fields value
    public Dog(String name, Integer age, String breed) {
     
        super(name,age);
        this.breed=breed;
        
    }

    //and override makeNoise method
   
    public override void makeNoise(){

        System.debug('Dog will bark : Woof!!'); 
        
    }

    public override String getInfo(String food){

        return 'Dog name '+ this.name + ' eating '+ food;
        
    }










}