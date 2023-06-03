import { Controller, Get, Post, Body, Patch, Param, Delete, UseGuards } from '@nestjs/common';
import { TicketService } from './ticket.service';
import { CreateTicketDto } from './dto/create-ticket.dto';
import { UpdateTicketDto } from './dto/update-ticket.dto';
import { TicketI } from './ticket_interface/ticket.interface';
import { JwtGuard } from 'src/auth/guard';

@UseGuards(JwtGuard)
@Controller()
export class TicketController {

  constructor(private  ticketService: TicketService) {}

  @Post()
  async createTicket(@Body() createTicketDto: CreateTicketDto): Promise<TicketI> {
    console.log("here in create ticket")
    return this.ticketService.createTicket(createTicketDto);
  }

  @Get()
  async getAllTickets(): Promise<TicketI[]> {
    return this.ticketService.getAllTickets();
  }

  @Get('/:id')
  async getTicketById(@Param('id') id: string) {
    return this.ticketService.getTicketById(id);
  }

  @Delete('delete:id')
  async deleteTicket(@Param('id') id: string): Promise<TicketI> {
    return this.ticketService.deleteTicket(id);
  }

  // get event by user id
  @Get('user/:id')
  async getTicketByUserId(@Param('id') id: string): Promise<TicketI[]> {
    return this.ticketService.getTicketByUserId(id);
  }

}
