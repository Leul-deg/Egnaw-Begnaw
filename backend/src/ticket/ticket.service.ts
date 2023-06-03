import { Injectable } from '@nestjs/common';
import { CreateTicketDto } from './dto/create-ticket.dto';
import { UpdateTicketDto } from './dto/update-ticket.dto';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { TicketI } from './ticket_interface/ticket.interface';

@Injectable()
export class TicketService {
  constructor(@InjectModel('Ticket') private ticketModel: Model<TicketI>) { }

  async createTicket(createTicketDto: CreateTicketDto): Promise<TicketI> {
    try {
      const newTicket = await this.ticketModel.create(createTicketDto);
      const result = newTicket.save();
      return newTicket;
    } catch (error) {
      throw error;
    }
  }

  async getAllTickets(): Promise<TicketI[]> {
    try {
      const newTicket = await this.ticketModel.find().sort({ updatedAt: -1 }).populate('eventId');

      return newTicket;
    } catch (error) {
      throw error;
    }
  }

  async getTicketById(id: string): Promise<TicketI> {
    try {
      const newTicket = await this.ticketModel.findOne({ _id: id });
      return newTicket;
    } catch (error) {
      throw error;
    }

  }

  // update(id: number, updateTicketDto: UpdateTicketDto) {
  //   return `This action updates a #${id} ticket`;
  // }

  async deleteTicket(id: string): Promise<TicketI> {
    try {
      const newTicket = await this.ticketModel.findOneAndDelete({ _id: id });
      return newTicket;
    } catch (error) {
      throw error;
    }
  }

  async getTicketByUserId(id: string): Promise<TicketI[]> {
    try {
      const newTicket = await this.ticketModel.find({ userId: id }).populate('eventId');
      return newTicket;
    } catch (error) {
      throw error;
    }
  }
}
