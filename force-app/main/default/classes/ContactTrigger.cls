public class ContactTrigger {


/**
 Requirement:
 When the contact is created , if the level__c field value is Primary
   -->Create 3 books under this contact
       - with Book Name : Book (1,2,3) + lastName
 */
//  public static void handleAfterInsert(List<Book__c> bookList ){

//   //create an empty list of book so we can add all the books and insert only once
//   List<Book__c> bookList =new List<Book__c>();

//   //what trigger i am in now --> looping CONTACT -->list of Contact
//   //trigger loop to go through each Contact that entered the trigger
//   for(Contact each : bookList) {
   
//    // check if the level__c field value is Primary
//    if(each.Level__c =='Primary'){

//      //Create 3 books under this contact, add it to the book list
//     bookList.add( new Book__c( Name='Book1' + each.LastName , Contact__c = each.Id ) );
//     bookList.add( new Book__c( Name='Book2' + each.LastName , Contact__c = each.Id ) );
//     bookList.add( new Book__c( Name='Book3' + each.LastName , Contact__c = each.Id ) );

//    }

//   }
 
//   //outside the loop, insert it once
//   insert bookList;

//  }


}