import * as mongoose from "mongoose";

export interface User extends mongoose.Document
{

    id: number;
    fullname: string;
    username: string;
    email: string;
    password: string;
    phone: string;
}
