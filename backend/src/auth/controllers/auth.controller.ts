import {
  Body,
  Controller,
  HttpCode,
  HttpStatus,
  Post,
  Req,
} from '@nestjs/common';
import { AuthService } from '../services/auth.service';
import { AuthDto } from '../dto';
import { OrganizerI } from 'src/Organizer/interfaces/organizer.interface';
import { CreateEventDTO } from 'src/event/dto/createEvent.interface';
import { CreateOrganizerDTO } from 'src/organizer/dto/createOrganizer.dto';

@Controller()
export class AuthController {
  constructor(private authService: AuthService) {}

  @Post('user/signup')
  signup(@Body() dto: AuthDto) {
    return this.authService.signup(dto);
  }
  @HttpCode(HttpStatus.OK)
  @Post('user/signin')
  signin(@Body() dto: AuthDto) {
    console.log(dto , "the dto upon user signin inininin ")
    return this.authService.signin(dto);
  }

  @Post('organizer/signup')
  OrganizerSignup(@Body() dto: CreateOrganizerDTO) {
    console.log(dto);
    return this.authService.organizerSignup(dto);
  }

  @HttpCode(HttpStatus.OK)
  @Post('organizer/signin')
  organizerSignin(@Body() dto: CreateOrganizerDTO) {
    console.log(dto);
    console.log(dto , "the dto upon organizer signin inininin ")
    return this.authService.organizerSignin(dto);
  }


}


