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

    //find user by email

    const filter = {email: dto.email}
    const cur_user = await this.userModel.findOne(filter)
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

      const token = await this.signToken(dto.email)

    return {...token, ...cur_user['_doc']};

}

async signToken(
  email: string,
): Promise<{ access_token: string }> {
  const payload = {
    email,
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
  console.log("got called", dto);
  const filter = {email: dto.email}
  // find new orgainzer by email
  const cur_organizer = await this.organizerModel.findOne(filter);

  console.log(cur_organizer, 'hereerer');
 
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
