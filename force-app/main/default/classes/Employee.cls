public class Employee {

//create variables
 public String name;
 public String role;
 public Integer id;
 public Static Decimal taxRate;

 //        METHODS --> Related, Specific with Object, Instance Variable
//creating a template for the object by using constructor
// for the exact variables
//this to give pointing which variables we'll be using
//instance variable
public Employee(String name, String role, Integer id){
      this.name=name;
      this.role=role;
      this.id=id;
}


//void--> no return , no argument, no calculation for return
//unique for object Not Class
//call the method name of the object -->obj
//Method --> you can use the variable/object-->this.name
public void obj(){
    System.debug('Employee name is '+ this.name); 
    
}

//using this keyword reference the ALL variables-->name,role,id
//no return just debugging
public void print(){
    System.debug(this); 
    
}

//          METHODS with ARGUMENT
//means some value that you want user to type
//user must provide some value depends on what arguments wants to get

 
public void study(String topic){
 System.debug('The Employee with ID of ' + id + ' is studying topic'); 
 
}

//inter num for the get some average for exam1 Score and exam2 Score
//i want to give variable and give some debug for those variable
 public void averageScore(Decimal exam1, Decimal exam2, Integer num){

    Decimal average = (exam1 + exam2) / num;
    System.debug('The  average score of '+ name + ' is '+ average);    
}


//           RETURN VERSION --> METHOD

//we dont use System.debug in the class, we use return keyword
//However to get the result we use System.debug in the Anonymous Windows
public Decimal averageScore2(Decimal exm1, Decimal exm2, Integer num){

    Decimal average = (exm1 + exm2) / num;
    return average;

}


//       STATIC --> related , SPECIFIC  with CLASS

//    1- Whenever you create a value like obj ,
    // you can shared with each and every method

//    2- to access static Field
    //.  className.staticFieldName --> Employee.obj

//      3-We do NOT use this keyword in the static field
//   If we want to use some object first we need to create an static instance
//   public Static Decimal taxRate;
//   if we want to give some value by default, you can assign it inside of System.debug
//.   4-Whole idea of static is YOU DO NOT NEED AN OBJECT
//    for this reason, you do not use an object in the static 

//    5-
public static void taxRate(){
    System.debug('Employee name is '+ taxRate); 
    
}
// when we use an object  --- > METHOD
// when we DO NOT use an object ---> STATIC
// Difference between method and static;

// static --> we use className.staticFieldName
// method --> objectName.MethodName

// you can see method is limited 
//because it depends on what you created as an object

// static is like universal , you can reach everywhere using by className
// only using by className. It doesn't care object
//we give some of logical code
//and it helps us to get executed. 

}
