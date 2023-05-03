/**

10. Write a program that takes a list of integers that represent 
the amounts of money spent by a set of users, and calculates the number of 
users who spent more than a certain amount (like 10000) of money.
in another word, create a list of Integer and get the count of numbers that 
                                                            over 10000 

 */

 //task10
 List<Integer>amountsOfMoneySpent = new List<Integer>{13688,19863,10001,9976,2765};
 Integer i=0;
 for(Integer eachAmountOfMoneySpent:amountsOfMoneySpent){
    if(eachAmountOfMoneySpent > 10000){
        i++;
    }
 }
 System.debug('The number of users who spent more than $10000: '+i);