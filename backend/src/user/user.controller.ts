import {
  Body,
  Controller,
  Get,
  Patch,
  UseGuards,
} from '@nestjs/common';
import { GetUser } from '../auth/decorator';
import { JwtGuard } from '../auth/guard';
import { EditUserDto } from './dto';
import { UserService } from './user.service';
import { User } from 'src/auth/interfaces/auth.interface';

@UseGuards(JwtGuard)
@Controller()
export class UserController {
  constructor(private userService: UserService) {}
  @Get('me')
  getMe(@GetUser() user:User) {
    console.log(user , "user please me");
    return user;
  }

  @Patch('edit')
  editUser(
    @GetUser('id') userId : string,
    @Body() dto: EditUserDto,
    // get Id from database
    
  ) {
    return this.userService.editUser(userId, dto);
  }
}
