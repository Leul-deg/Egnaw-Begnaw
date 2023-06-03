import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Put,
  UseGuards,
} from '@nestjs/common';
import { GetUser } from '../auth/decorator';
import { JwtGuard } from '../auth/guard';
import { EditUserDto } from './dto';
import { UserService } from './user.service';

@UseGuards(JwtGuard)
@Controller()
export class UserController {
  constructor(private userService: UserService) {}
  // get all users
  @Get('users')
  getUsers() {
    return this.userService.getUsers();
  }


  @Put('update/:id')
  updateUser(@Param('id') id: string, @Body() editUserDto: EditUserDto) {
    console.log(id, "this is the id from the user controller");
    return this.userService.updateUser(id, editUserDto);
  }

  // delete user
  @Delete('delete/:id')
  deleteUser(@Param('id') id: string) {
    return this.userService.deleteUser(id);
  }

}
