import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { MongooseModule } from '@nestjs/mongoose/dist';

import { JwtStrategy } from './strategy/jwt.strategy';
import { AuthController } from './controllers/auth.controller';
import { AuthService } from './services/auth.service';
import { UserSchema } from './schemas/auth.schema';

@Module({
  imports: [ 
  JwtModule.register({
    signOptions: { expiresIn: '36000' },
  }), MongooseModule.forFeature([{name:"User", schema: UserSchema}])],
  controllers: [AuthController],
  providers: [AuthService, JwtStrategy],  
})
export class AuthModule {}
