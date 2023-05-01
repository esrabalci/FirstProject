public class BookTriggerHandler {
 
/**
 *   Requirement:
  If the Book Name has changed, 
  we want to keep the old value in description field for Tracking
  This can be done in BEFORE_UPDATE event

 */

public static void handleBeforeUpdate(List<Book__c> bookLst , Map<id,Book__c> bookOldMap){

    //Loop trigger 
    for(Book__c each : bookLst) {
     
        //get old book value
    Book__c oldBook= bookOldMap.get(each.Id);

       // If the Book Name has changed, 
    if(each.Name != oldBook.Name){
        //update the description
       each.Description__c ='Old value : '+ oldBook.Name;

    }
    }
}



/**

A method that accept list of book is created or updated
When the new book record is created or updated 
if the year is empty ==> set it to 1999
Normalize the Book Name to remove extra spaces everywhere in the same
make your bookName TitleCase
 */
public static void handleBeforeInsertUpdate(List<Book__c> bookLst){

        // Start with trigger loop
        for(Book__c each : bookLst) {
        
            if ( each.Year__c == Null ) {
    
            each.Year__c=1999;
                 
            }
        //make the name TitleCase
        each.Name =each.Name.normalizeSpace();
        //get the list of each word
        List<String> wordList =each.Name.split(' ');
    
        //loop through
        for(Integer i=0; i<wordList.size() ;i++) {
            wordList[i]=wordList[i].toLowerCase().capitalize();
            
        }
            each.Name = String.join(wordList, ' ');
      }
}



public static void handleAfterUndelete(List<Book__c> bookLst){

//UserInfo class can be used to get information about current logged in user
//it has many static methods to extract information
//including getting the userId, firstName, lastName emails and so on
//with method with getXXX format
String userEmail=UserInfo.getUserEmail();
String body = 'Make sure this book supposed to be restored '; 

    for(Book__c each : bookLst) {
        
       String subject = each.Name + 'Book has been restored ';

        EmailManager.sendMail(UserInfo.getUserEmail() , subject, body);
    }
        
}


/**
 Requirement : when the name of Book is updated 
--> for now print out the old value of Book
Before Update is proper event for this case
 */

public static void handleBeforeBeforeOldValueUpdate(List<Book__c> bookLst){

    for(Book__c eachOld : bookLst) {
        System.debug('eachOld.Name value : ' + eachOld.Name);
        
    }

}

}