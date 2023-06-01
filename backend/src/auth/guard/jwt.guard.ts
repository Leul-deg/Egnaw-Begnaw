import { AuthGuard } from '@nestjs/passport';

export class JwtGuard extends AuthGuard('jwt') {
  constructor() {
    super();
  }

  handleRequest(err, user, info, context) {
    if (err || !user) {
      console.log(err, "this is the error from the jwt guard");
      throw err || new Error('Access Denied');
    }
    console.log(user, "this is the user from the jwt guard");
    return user;
  }
}
