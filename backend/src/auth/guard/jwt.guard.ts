import { UnauthorizedException } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';

export class JwtGuard extends AuthGuard('jwt') {
  constructor() {
    super();
  }

  handleRequest(err, user, info, context) {
    if (err || !user) {
      console.log(err, "this is the error from the jwt guard");
      // throw new UnauthorizedException();
    }
    console.log(user, "this is the user from the jwt guard");
    return user;
  }
}
