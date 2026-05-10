import { LightningElement, api } from 'lwc';

export default class OpportunityBanner extends LightningElement {

    @api recordId;
    @api objectApiName;

    isHighValue = true;

}