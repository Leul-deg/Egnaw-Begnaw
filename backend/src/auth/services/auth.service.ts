import {
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { AuthDto } from '../dto';
import * as argon from 'argon2';
import { JwtService } from '@nestjs/jwt';
// import { ConfigService } from '@nestjs/config';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { User } from '../interfaces/auth.interface';

@Injectable()
export class AuthService {
  constructor(
    @InjectModel('User') private userModel: Model<User>,
    private jwt: JwtService,
  ) {}

  async signup(dto: AuthDto) {
    // generate the password hash
    const hash = await argon.hash(dto.password);
    dto.password = hash
    // save the new user in the db
    try{
    const new_user = new this.userModel(dto)
    const result = await new_user.save()
    return result
    }
    catch(error){
      if(error.code === 11000){

        throw new ForbiddenException(
                  'Credentials taken',
                );
      }
    }
  }

  async signin(dto: AuthDto) {

    //find user by username

    const filter = {username: dto.username}
    
    const cur_user = await this.userModel.findOne(filter)

    //username not found
    if (!cur_user){
      throw new ForbiddenException(
                'Credentials incorrect',
              );
    }

     // compare password
    const pwMatches = await argon.verify(
      cur_user.password,
      dto.password,
    );
    // if password incorrect throw exception
    if (!pwMatches)
      throw new ForbiddenException(
        'Credentials incorrect',
      );
    return this.signToken(dto.username);

}

async signToken(
  username: string,
): Promise<{ access_token: string }> {
  const payload = {
    username,
  };
  const secret = 'JWT_SECRET';

  const token = await this.jwt.signAsync(
    payload,
    {
      expiresIn: '15m',
      secret: secret,
    },
  );

  return {
    access_token: token,
  };
}
}