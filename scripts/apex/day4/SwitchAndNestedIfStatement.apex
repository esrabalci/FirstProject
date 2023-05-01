/*
switch on expression {
    when value1 {        // when block 1
        // code block 1
    }    
    when value2 {        // when block 2
        // code block 2
    }
    when value3 {        // when block 3
        // code block 3
    }
    when else {          // default block, optional
        // code block 4
    }
}
*/

String season = 'summer' ;

switch on season{

 when 'spring'{
        System.debug('Go Camping');
    }
when 'summer'{
         System.debug('Go Swimming');
    }
when 'fall'{
        System.debug('Go Pick Pumpkin');
    }
when 'winter'{
     System.debug('Go to sleep');
}
when else{
     System.debug('invalid season');
}
}

// Declare a variable call dayCode as Integer
// initialize it's value

//check if the dayCode value 1, 2, 3, 4, 5
                              //if it's print weekday
// check if it's 6,7 --> print weekend
//else --> print invalid day code


Integer dayCode=6;

// ---------use IF statement for solution
/*
if(dayCode == 1 || dayCode == 2 || dayCode == 3 || dayCode ==4 || dayCode ==5  ){
      System.debug('weekday');
}else if (dayCode == 6 || dayCode == 7){
    System.debug('weekend');
}else{
    System.debug('invalid dayCode');
}
*/


// ---------use switch statement for solution
switch on dayCode{
    when 1, 2, 3, 4, 5{
      System.debug('weekday ');
    }
    when 6, 7{
       System.debug('weekend  '); 
    }
    when else{
        System.debug('Invalid Day');
    }
}

//-----------Nested IF Statemnent

// You can use if statement inside another if statement when needed// this is called nested if statement


Boolean primeMember = false;
Integer itemPrice = 1;

//if primeMember is true, there is no shipping cost
// print out --> your shipping is free
// print total is itemPrice


// if primeMember is false and itemPrise is greater than $35
//print your shipping is free
//itemPrice is less than $35 --> print shipping cost is $5
//print out total is itemPrice + $5

if(primeMember==true){  // you can also directly write if(primeMember)
    System.debug('Your shipping is free');
}else{
    
    if(itemPrice>=35){
        System.debug('Non-primeMember : Your shipping is free');
    }else{
        System.debug('shipping cost is 5$');
        System.debug('total is ' +  (itemPrice+5)  );
    }  
}











