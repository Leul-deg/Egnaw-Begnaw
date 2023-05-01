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

@Controller()
export class AuthController {
  constructor(private authService: AuthService) {}

  @Post('signup')
  signup(@Body() dto: AuthDto) {
    return this.authService.signup(dto);
  }

  @HttpCode(HttpStatus.OK)
  @Post('signin')
  signin(@Body() dto: AuthDto) {
    console.log(dto , "the dto upon signin inininin ")
    return this.authService.signin(dto);
  }
}


