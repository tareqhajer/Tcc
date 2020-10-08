import { IModel } from '../interfaces/IModel';

export class Maincountry implements IModel{
    constructor() {
        this.Name="";
        this.Id=0;
     }
    Id:number;
    Name:string;
    IsEnabled:boolean;
    Created:Date;
    CreatedBy:string;
    Modified:Date;
    ModifiedBy:string;
}
