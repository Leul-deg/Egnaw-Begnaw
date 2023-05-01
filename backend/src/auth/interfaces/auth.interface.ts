import * as mongoose from "mongoose";

export interface User extends mongoose.Document
{

    id: string;
    firstName: string;
    lastName: string;
    userName: string;
    email: string;
    password: string;
    phone: string;
}
