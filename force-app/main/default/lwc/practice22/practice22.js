import { LightningElement } from "lwc";
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import Phone_FIELD from "@salesforce/schema/Account.Phone";
//short cut-> impLWCToast
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Practice22 extends LightningElement {

    objectApiName= ACCOUNT_OBJECT;

    fields=[NAME_FIELD, REVENUE_FIELD, INDUSTRY_FIELD, Phone_FIELD];

    handleSuccess(event) {
        
      console.log(event.detail);
      console.log(event.detail.id);
      console.log(event.detail.fields.AnnualRevenue);


        const showToastEvent = new ShowToastEvent({
            title: 'Successfully Created',
            message: 'You have created account successfully',
            variant: 'success'
        }); 

        this.dispatchEvent(showToastEvent);


    }    



	
}

// console.log('Hello World');
// const message='Hello World';
// console.log(message);

// this.dispatchEvent(new ShowToastEvent({
//     title: 'Successfully Created',
//     message: 'You have created account successfully',
//     variant: 'success'
// }));