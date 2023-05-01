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
import { CreateOrganizerDTO } from 'src/organizer/dto/createOrganizer.dto';
import { OrganizerI } from 'src/Organizer/interfaces/organizer.interface';


@Injectable()
export class AuthService {
  constructor(
    @InjectModel('User') private userModel: Model<User>,
    @InjectModel('Organizer') private organizerModel: Model<CreateOrganizerDTO>,
    private jwt: JwtService,
  ) {}

  async signup(dto: AuthDto) {
    console.log("got called");
    console.log(dto , "the dto");
    // generate the password hash
    const hash = await argon.hash(dto.password);
    dto.password = hash
    // save the new user in the db
    try{
      // const newEvent = await this.eventModel.create(event);
      // return newEvent;

    const new_user = await this.userModel.create(dto)
    const result = await new_user.save()
    return new_user
    }
    catch(error){
      console.log(error , "the error")
      if(error.code === 11000){

        throw new ForbiddenException(
                  'Credentials taken',
                );
      }
    }
  }

  async signin(dto: AuthDto) {

    //find user by username

    const filter = {userName: dto.userName}
    console.log(dto , "the dto upon signin fucked")
    const cur_user = await this.userModel.findOne(filter)
    console.log(cur_user,"curr user here")
    //username not found
    // const newEvent = await this.eventModel.findOne({ _id: id });
    //         return newEvent;
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
        'Credentials incorrect upon signin',
      );
    return this.signToken(dto.userName);

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

// function for organizer signup
async organizerSignup(dto: CreateOrganizerDTO) {
  // generate the password hash
  const hash = await argon.hash(dto.password);
  dto.password = hash

  // save the new user in the db
  const new_organizer = await this.organizerModel.create(dto)
  const result = await new_organizer.save()
  return new_organizer
}

// function for organizer signin
async organizerSignin(dto: CreateOrganizerDTO) {
  const filter = {email: dto.email}
  // find new orgainzer by email
  console.log(dto , "the dto upon organizer signin fucked")
  const cur_organizer = await this.organizerModel.findOne(filter);
 
  if (!cur_organizer){
    throw new ForbiddenException(
              'Credentials incorrect',
            );
  }

   // compare password
  const pwMatches = await argon.verify(

    cur_organizer.password,
    dto.password,
  );
  // if password incorrect throw exception
  if (!pwMatches)
    throw new ForbiddenException(
      'Credentials incorrect upon signin',
    );
  return this.signToken(dto.email);
}

}
