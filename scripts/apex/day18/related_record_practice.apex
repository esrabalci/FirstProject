/**

Create an Account with below fields
   Name,AnnualRevenue,Industry
insert into SF

Create an Opportunity under this Account 
with required fields filled up
 Name,StageName,CloseDate
insert this record

using your Opportunity variable
    access parent record field and print it out 

 */

Account a1 = new Account(Name = 'SF TDX 23',
                         AnnualRevenue = 1000000,
                         Industry = 'Technology'
                        );
//insert this record                        
insert a1;

Opportunity o1 = new Opportunity();
//under this Account 
o1.AccountId=a1.Id;
//Name,StageName,CloseDate
o1.Name='TDX 23 Opps';
o1.StageName='Prospecting';
o1.CloseDate=Date.today() +7;

//insert this record
insert o1;

//create 5 cases under this Account with below subject
//TDX Case 1 , 2 , 3 , 4 , 5

//5 item needs to store somewhere so 1st create empty list
List<Case> caseList = new List<Case>(); 

for(Integer i=1; i<=5 ;i++) {
    caseList.add(new Case(Subject='TDX Case ' +i , AccountId =a1.Id)   );

}
System.debug('caseList value is : ' + caseList); 

insert caseList;







// //use o1 to access the AnnualRevenue field of a1 Account
// Decimal rev= o1.Account.AnnualRevenue;
// System.debug('annualRevenue of opp parent Account value is : ' + rev); 
// //use o1 to access the Industry field of a1 Account

