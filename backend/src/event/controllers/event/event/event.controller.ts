import { Controller, Get, Post, Delete, Param, Body } from '@nestjs/common';
import { CreateEventDTO } from 'src/event/dto/createEvent.interface';
import { UpdateEventDTO } from 'src/event/dto/updateEvent.interface';
import { EventI } from 'src/event/interfaces/event.interface';
import { EventService } from 'src/event/services/event.service';

@Controller()
export class EventController {

    constructor(private eventService: EventService) {}

    @Post()
    async createEvent(@Body() event: CreateEventDTO): Promise<EventI> {

        return this.eventService.createEvent(event);
    }

    @Get()
    async getAllEvents(): Promise<EventI[]> {
        return this.eventService.getAllEvents();
    }

    @Get('/:id')
    async getEventById(@Param('id') id: string) {
        return this.eventService.getEventById(id);
    }

    @Get('update/:id')
    async updateEvent(@Param('id') id: string, @Body() event: UpdateEventDTO): Promise<EventI> {
        return this.eventService.updateEvent(id, event);
    }

    @Delete('delete/:id')
    async deleteEvent(@Param('id') id: string): Promise<EventI> {
        return this.eventService.deleteEvent(id);
    }

    // get events by organizerId
    @Get('organizer/:id')
    async getEventsByOrganizerId(@Param('id') id: string): Promise<EventI[]> {
        return this.eventService.getEventsByOrganizerId(id);
    }

}
