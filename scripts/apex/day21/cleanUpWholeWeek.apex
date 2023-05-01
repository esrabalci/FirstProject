
//Run this anonymous code to clean up whole week 

delete [Select ID From Account Where CreatedDate=THIS_WEEK] ;

//Or Run this anonymous code to clean up whole day 
//delete [Select ID from Account Where CreatedDate=TODAY];
