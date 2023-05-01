import { Module } from '@nestjs/common';
import { OrganizerController } from './controllers/organizer/organizer/organizer.controller';
import { OrganizerService } from './controllers/organizer/organizer/organizer.service';
import { OrganizerService } from './services/organizer/organizer/organizer.service';
import { OrganizerService } from './services/organizer/organizer/organizer.service';

@Module({
  controllers: [OrganizerController],
  providers: [OrganizerService]
})
export class OrganizerModule {}
