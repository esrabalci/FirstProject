/**

5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
 */

//task5
 List < String > DuplicateNames = new  List < String >{'Mel','Mel','Mel','Esra',
                                                   'Jon','Jasmin','Jasmin',
                                                    'Jon','El','El'};
Set<String>NonDuplicateName = new Set<String>();

for(String eachName : DuplicateNames){
    NonDuplicateName.add(eachName);
}
System.debug('the size of Nonduplicate names: '+NonDuplicateName.size());