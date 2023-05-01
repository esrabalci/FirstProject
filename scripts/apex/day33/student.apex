//Account a = new Account(Name='Apex acc', Rating='Hot');

// Student s1 = new Student('Ilaha','H',100); 

Student s1 = new Student(); 
System.debug('s1 value is : ' + s1);

System.debug('------------------');


Student s2 = new Student(); 
System.debug('s2 value is : ' + s2);

System.debug('------------------');

Student s3 = new Student('Ilaha', 'H', 100);
System.debug('s3 value is : ' + s3);

System.debug('------------------');


Student s4 = new Student('Abbas', 'M', 101); 
s4.study() ;   //Abbas Study 
s4.study(5) ;  //Abbas Study 5 hours


List<Student> studentLst = new List<Student>(); 

studentLst.add(  new Student('Abbas', 'M', 101)    ) ; 
studentLst.add(  new Student('Shay', 'A', 102)    ) ; 
studentLst.add(  new Student('Cavidan', 'M', 103)    ) ; 
studentLst.add(  new Student('Gurkan', 'D', 104)    ) ; 
studentLst.add(  new Student('Neslihan', 'K', 105)    ) ; 

System.debug('studentLst value is : ' + studentLst);

// Loop through each item in this List 
// and call the study method on each student 

for(Student each : studentLst) {
    
    System.debug(each ); 
    

}
    
