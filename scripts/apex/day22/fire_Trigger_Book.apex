
//Create a new book instance with fields
Book__c b= new Book__c(Name='Apex Book');

//insert the records into SF
insert b;

b.Name='Awesome new book for lunch!!!';
update b;



