import { LightningElement } from 'lwc';

export default class Practice9 extends LightningElement {

  // property|field to store selected option
  selectedValue = '';
  

  //this is the format we need to provide the options
  //for the picklist
  get options() {
    return [
        { label: 'None', value: '' },
        { label: 'New York', value: 'NY' },
        { label: 'Virginia', value: 'VA' },
        { label: 'New Jersey', value: 'NJ' },
        { label: 'California', value: 'CA' },
        { label: 'Pennsylvania', value: 'PA' },
        { label: 'Texas', value: 'TX' },
        { label: 'Maryland', value: 'MD' },
    ];
}

//this is the way we get the selected value
//from the picklist using the event
//it's not under event.target, it's under event.detail
handleChange(event){

    this.selectedValue = event.detail.value;

}

// a getter method to check if selectedValue is VA or MD
  get isCapitalArea(){

    return this.selectedValue==='VA' || this.selectedValue==='MD'

  }












}