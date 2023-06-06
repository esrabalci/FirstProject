import { LightningElement, api } from "lwc";
import OPP_OBJECT from "@salesforce/schema/Opportunity";
import NAME_FIELD from "@salesforce/schema/Opportunity.Name";
import STAGE_FIELD from "@salesforce/schema/Opportunity.StageName";
import CLOSE_DATE_FIELD from "@salesforce/schema/Opportunity.CloseDate";
import AMOUNT_FIELD from "@salesforce/schema/Opportunity.Amount";

import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class Practice24_edit extends LightningElement {

    // if you are just planning to put this form on record page
    // you can even get the objectApiName directly from the record page without 
    //import @api objectAipName
    objectApiName = OPP_OBJECT; 
    //recordId = '006Dn000009xcL4IAI';

    // this decoration is used to make this property public
    //so the parent component pr the re record page can inject the recordId
    //to the this property automatically if we are on record page
    @api 
    recordId;

    fields = [NAME_FIELD, STAGE_FIELD, CLOSE_DATE_FIELD, AMOUNT_FIELD]; 


    showSuccess() {
        
        this.dispatchEvent(
            new ShowToastEvent(
                    {
                        title: 'Opp Updated successfully',
                        message: 'Successfully updated',
                        variant: 'success'
                    }
            )
        );

    }
  
  



}

