import { LightningElement } from "lwc";
import getMaxOppAmount from "@salesforce/apex/AccountController.getMaxOppAmount";
import getAccountByName from "@salesforce/apex/AccountController.getAccountByName";
export default class Practice21 extends LightningElement {

    //property to display highest Amount

    highestOppAmount=0;

    //property to display result from getAccountByName method
    account={};


    handleClick(){

        console.log('Button clicked.');

        //we want to add a logic
        //when the button is clicked
        //call Apex method getMaxAmount
        //get the resulting number
        //assign it into highestOppAmount

      getMaxOppAmount().then( result=> {
        console.log(result);
        this.highestOppAmount =result;
      } )


    }

    handleGetAccount(){
    
          getAccountByName( { accName: 'GenePoint'  }).then(  result=>   {
               
            console.log(result);
             this.account=result;
          })
    }

}