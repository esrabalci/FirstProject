
public abstract class Animal {


//instance fields name , age

public String name;
public Integer age;


//constructor to set those 2 fields 
public Animal(String name, Integer age){
    this.name=name;
    this.age=age;

}

//create abstract void method called make noise
public abstract void makeNoise();


//abstract method that return name+age as String
//called getInfo()
//return name as String name and age as integer
//param as food
public abstract String getInfo(String food);




}