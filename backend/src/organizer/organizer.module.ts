import { Module } from '@nestjs/common';
import { OrganizerController } from './controllers/organizer/organizer/organizer.controller';
import { OrganizerService } from './services/organizer/organizer.service';
import { MongooseModule } from '@nestjs/mongoose';
import { OrganizerSchema } from './schemas/organizer.schema';

@Module({
  imports: [MongooseModule.forFeature([{ name: 'Organizer', schema: OrganizerSchema }])],
  controllers: [OrganizerController],
  providers: [OrganizerService]
})
export class OrganizerModule {}
