import { LightningElement } from "lwc";
import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import Name_FIELD from "@salesforce/schema/Opportunity.Name";
import Stage_FIELD from "@salesforce/schema/Opportunity.StageName";
import Close_Date_FIELD from "@salesforce/schema/Opportunity.CloseDate";
import Amount_FIELD from "@salesforce/schema/Opportunity.Amount";
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Practice24 extends LightningElement {

  objectApiName= OPPORTUNITY_OBJECT;
  fields = [Name_FIELD, Stage_FIELD, Close_Date_FIELD,Amount_FIELD];


  showSuccess(event) {
        
	this.dispatchEvent(
		new ShowToastEvent(
				{
					title: 'Opp created successfully',
					message: 'Successfully created and record Id is ' + event.detail.id ,
					variant: 'success'
				}
		)
	);

}





}