import { Injectable } from '@nestjs/common';
import { UnauthorizedException } from '@nestjs/common/exceptions';
import { InjectModel } from '@nestjs/mongoose';
import { PassportStrategy } from '@nestjs/passport';
import { Model } from 'mongoose';
import {
  ExtractJwt,
  Strategy,
} from 'passport-jwt';
import { User } from '../interfaces/auth.interface';

@Injectable()
export class JwtStrategy extends PassportStrategy(
  Strategy,
  'jwt',
) {
  constructor(
      @InjectModel('User') private readonly userModel: Model<User>,
  ) {
    super({
      jwtFromRequest:
        ExtractJwt.fromAuthHeaderAsBearerToken(),
      secretOrKey: 'JWT_SECRET',
    });
  }

  async validate(payload: {
    username: string;
  }) {
    
    const filter = {userName:payload.username}
    console.log(filter , "filter oooojh");
    const user =  this.userModel.findOne(filter)
    if(!user){
      console.log("user not found");
      throw new UnauthorizedException()
    }



    return user;
  }
}