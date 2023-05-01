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

  async editUser(
    userId: string,
    // dto: EditUserDto,
    dto : Partial<User>
  ) {
    if (dto.password) {
      // encrypt using argon2
      const hash = await argon.hash(dto.password);
      dto.password = hash
    }

    console.log(userId, "fron the function ");
    const updatedModel = await this.userModel.updateOne({ _id: userId }, dto);
    console.log(updatedModel,
      "this is the updated model from the user service");
    return updatedModel;
    // const user = await this.prisma.user.update({
    //   where: {
    //     id: userId,
    //   },
    //   data: {
    //     ...dto,
    //   },
    // });

    // delete user.hash;

    // return user;
  }
}
