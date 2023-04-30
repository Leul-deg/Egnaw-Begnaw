import { Module } from '@nestjs/common';
import { EventService } from './services/event.service';

import { MongooseModule } from '@nestjs/mongoose'
import { EventController } from './controllers/event/event/event.controller';
import { EventSchema } from './schemas/event.schema';

@Module({
    imports: [MongooseModule.forFeature([{ name: 'Event', schema: EventSchema }])],
    controllers: [EventController],
    providers: [EventService]
})


export class EventModule { }
