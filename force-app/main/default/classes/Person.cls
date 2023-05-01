public  class Person {
    
//name, height, age
//instance field | variables
public String name;
public Integer age;
public Decimal height;



//create a void method called print name 
//it should simply print message
//printing the person name

public void printName(){

    System.debug('Printing the person name '+ this.name);   
}


//create a void method called printAge
//age of the person is : XX

public void printAge(){
    System.debug('The age of ' + this.name + ' is ' + this.age); 
    
}


// Create a void method called describePerson
// print the instance field values in below format
// NameXX is AgeXX and Height id HeightXX

public void describePerson(){
    System.debug(this.name+' is '+ this.age +' and Height is '+ this.height); 
  
}


//Create a void method changeName
//it should accept one external data as text
//  (it has 1 String parameter)
//it should be simply change the name of field of
//current object calling the method to new name

public void changeName(String newName){

  name = newName;
  //this.name = newName;
}

//Create a void method setAgeAndHeight
//it should accept two parameters
//  newAge as Integer newHeight as Decimal
//it should be simply change the age,height of field of
//current object calling the method 

public void setAgeAndHeight(Integer newAge, Decimal newHeight){
     
    this.age=newAge; // age  = newAge ;
    this.height=newHeight; // height = newHeight ;
}


  // create a void method called setPersonInfo
  // it should accept 3 parameters
  //  name as String 
  //  age as Integer  
  //  height as Decimal
  // it should be simply change the name, age,height field of 
  // current object calling the method

public void setPersonInfo (String name, Integer age, Decimal height){
      
      this.name= name;
      this.age= age;
      this.height =height;

}



//Create a method call getAllCapName
//this method should 
//make the name of the current object Upper case and
//return it to the caller

public String getAllCapName(){
   String uppName= this.name.toUpperCase();
   //return keyword is used for the value to the caller of this name
   return uppName;

}

//Create a method called isEligibleForVote
// expect no external data
// return tru the age of current Person object
// is 18 or above, otherwise return false
public Boolean isEligibleForVote(){
    
    if(this.age >=18){
        return true;
    }else{
        return false;
    }

  //return this.age >=18;

}

//Create a method  call getAgeGroup
// it does not have any method parameter
//it return age group based on below criteria
//   0-6   Little Kid
//   6-12  Young Kid
//   12-18 Teenager
//    18 + Adult

public String getAgeGroup(){

 if(this.age<0 || this.age>120){
     return 'Invalid';
 }else if(this.age>=0 && this.age <6){
    return 'Little Kid';
 }else if(this.age >=6 && this.age<12){
    return 'Young Kid';
 }else if(this.age>=12 && this.age <18){
    return 'Teenager';
 }else {
    return 'Adult';
 }
}


//create a method called isHigherThan
//it accept 1 external data(argument) as decimal
//return true if height of current person object
//is higher than this number , otherwise false
public Boolean isHigherThan(Decimal otherHeight){
  //this is already a boolean result
  return this.height > otherHeight;

}




}