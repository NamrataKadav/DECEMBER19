import { LightningElement } from 'lwc';
import runBatch from '@salesforce/apex/EngagementActivityBatchClass.runBatch';

export default class BatchLWC extends LightningElement {
    // handleclick method
    handleClick() {
        runBatch();
    }
}