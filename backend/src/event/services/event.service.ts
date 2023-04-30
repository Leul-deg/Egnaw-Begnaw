import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { CreateEventDTO } from '../dto/createEvent.interface';
import { UpdateEventDTO } from '../dto/updateEvent.interface';
import { Model } from 'mongoose';
import { EventI } from '../interfaces/event.interface';

@Injectable()
export class EventService {
    constructor(@InjectModel('Event') private eventModel: Model<CreateEventDTO>) { }

    async createEvent(event: CreateEventDTO): Promise<EventI> {
        try {
            const newEvent = await this.eventModel.create(event);
            return newEvent;
        } catch (error) {
            throw error;
        }
    }

    async getAllEvents(): Promise<EventI[]> {
        try {
            const newEvent = await this.eventModel.find()
                .sort({ updatedAt: -1 })
                .exec();

            return newEvent;
        } catch (error) {
            throw error;
        }
    }

    async getEventById(id: string): Promise<EventI> {
        try {
            const newEvent = await this.eventModel.findOne({ _id: id });
            return newEvent;
        } catch (error) {
            throw error;
        }
    }

    async updateEvent(id: String, event: UpdateEventDTO): Promise<EventI> {
        try {
            const newEvent = await this.eventModel.findOneAndUpdate({ _id: id }, event);
            return newEvent;
        } catch (error) {
            throw error;
        }
    }

    async deleteEvent(id: String): Promise<EventI> {
        try {
            const newEvent = await this.eventModel.findOneAndDelete({ _id: id });
            return newEvent;
        } catch (error) {
            throw error;
        }
    }

}
