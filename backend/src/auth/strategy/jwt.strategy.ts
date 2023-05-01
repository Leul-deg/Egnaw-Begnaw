import { Injectable } from '@nestjs/common';
import { InjectModel, MongooseModule } from '@nestjs/mongoose';
// import { ConfigService } from '@nestjs/config';
import { Model } from 'mongoose';
import { PassportStrategy } from '@nestjs/passport';
import {
  ExtractJwt,
  Strategy,
} from 'passport-jwt';
import { AuthDto } from '../dto';

@Injectable()
export class JwtStrategy extends PassportStrategy(
  Strategy,
  'jwt',
) {
  constructor(
    @InjectModel('User') private userModel: Model<AuthDto>,

  ) {
    super({
      jwtFromRequest:
        ExtractJwt.fromAuthHeaderAsBearerToken(),
      secretOrKey: 'JWT_SECRET',
    });
  }

  async validate(payload: {
    sub: number;
    email: string;
  }) {

    // const user =
    //   await this.prisma.user.findUnique({
    //     where: {
    //       id: payload.sub,
    //     },
    //   });

    const user = await this.userModel.findOne({ _id: payload.sub });


    return user;
  }
}
