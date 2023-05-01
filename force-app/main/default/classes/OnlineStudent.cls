/**
In order to build parent child, super-sub ,
 is a relationship between 2 classes
 we use the keyword extends
 Class A extends Class B
 B is a parent | super class
 A is a child | sub class
 In this case, OnlineStudent extends Student
 will allow OnlineStudent class to have
 all the public fields and methods
 directly available without re-writing them
 */

public class OnlineStudent extends Student {


// firstName, lastName, studentId, meetingId
//   public String  firstName; 
//   public String  lastName; 
//   public Integer studentId; 
  public Integer meetingId;


//set default values for all the fields
//first lastName should onlineUnknown
//studentId 200
//meetingId 987654321
public OnlineStudent(){

//call super class 3 param constructor
//to set up default values to reuse it's functionality
super('onlineUnknown', 'onlineUnknown',200);
this.meetingId =987654321;

}

public OnlineStudent(String firstName, String lastName, Integer studentId, Integer seatId){

super(firstName,lastName,studentId);
this.meetingId=meetingId;



}









}