import { Injectable } from '@angular/core';

@Injectable()
export class SelectionService {
    private selectedValue: string;

    getSelectedValue(): string {
        return this.selectedValue;
    }

    setSelectedValue(value): void {
        console.log(value);
        this.selectedValue = value;
    }
}