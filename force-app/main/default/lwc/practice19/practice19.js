import { LightningElement , wire} from "lwc";
import getAccountByName from "@salesforce/apex/AccountController.getAccountByName";
export default class Practice19 extends LightningElement {

    searchInput = 'GenePoint';

    handleSearchChange(event){
        this.searchInput =event.target.value;

    }


   //wire the result of getAccountByName
   //into property called theAccount
   @wire(getAccountByName, {accName: '$searchInput'})
   theAccount;

 get theAccountInStr(){
    return JSON.stringify( this.theAccount, null, 2  );
 }



// person = {
  
    //       firstName : 'Ahmed',
    //       lastName  : 'A',
    //       age       :  18,
    //       company: {
    //          name : 'Tesla',
    //          state : 'Texas'
    //       }
          
    //    };
    
    //    //show the person object in pretty format 
    //    get prettyPerson(){
    //      return JSON.stringify( this.person,null,2 );
    //    }

}