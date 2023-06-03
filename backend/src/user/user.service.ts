import { Injectable } from '@nestjs/common';
import { EditUserDto } from './dto';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { User } from 'src/auth/interfaces/auth.interface';
import * as argon from 'argon2';


@Injectable()
export class UserService {
  constructor(
    @InjectModel('User') private userModel: Model<EditUserDto>,
  ) {}

  async updateUser(
    userId: string,
    // dto: EditUserDto,
    dto : Partial<User>
  ) {
    console.log('in the update user function');
    if (dto.password) {
      // encrypt using argon2
      const hash = await argon.hash(dto.password);
      dto.password = hash
    }

    console.log(userId, "fron the function ");
    const updatedModel = await this.userModel.updateOne({ _id: userId }, dto);
    console.log(updatedModel,
      "this is the updated model from the user service");

    // return the updated data

    const newUser = await this.userModel.findOne({ _id: userId });

    return newUser;

  }

  async getUsers() {
    return this.userModel.find();
  }

  // delete user
  async deleteUser(userId: string) {
    // find the user and delete the user

    console.log(userId, "this is the user id from the user service");
    console.log("this is the user id from the user service"); 

    return this.userModel.deleteOne({ _id: userId });

  }
}
