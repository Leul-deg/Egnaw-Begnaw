import { Injectable } from '@nestjs/common';
import { EditUserDto } from './dto';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';


@Injectable()
export class UserService {
  constructor(
    @InjectModel('User') private userModel: Model<EditUserDto>,
  ) {}

  async editUser(
    userId: number,
    dto: EditUserDto,
  ) {
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
