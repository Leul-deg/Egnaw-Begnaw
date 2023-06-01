import 'package:dartz/dartz.dart';

import 'package:frontend/domain/ticket/ticket.dart';
import 'package:frontend/infrastructure/ticket/data_sources/ticket_data_sources.dart';

class TicketRepositoryImp implements TicketRepository {
  final TicketDataSource ticketDataSource;
  TicketRepositoryImp({
    required this.ticketDataSource,
  });

  // create ticket
  @override
  Future<Either<TicketFailure, Object>> createTicket(
      TicketCreateModel ticketCreateModel) async {
        return await ticketDataSource.createTicket(ticketCreateModel);
  }

  // update ticket
  @override
  Future<Either<TicketFailure, Object>> updateTicket(
      TicketUpdateModel ticketUpdateModel) async {
        return await ticketDataSource.updateTicket(ticketUpdateModel);
  }

  // get tickets by user id

  @override
  Future<Either<TicketFailure, List<dynamic>>> getTicketsByUserId(String userId) async {
    return await ticketDataSource.getTicketsByUserId(userId);
  }
  
  @override
  Future<Either<TicketFailure, Object>> deleteTicket(String id) async {
    return await ticketDataSource.deleteTicket(id);
  }
  
  @override
  Future<Either<TicketFailure, List<Object>>> getAllTickets() async {
    return await ticketDataSource.getAllTickets();
  }
  
  @override
  Future<Either<TicketFailure, Object>> getTicket(String id) async {
    return await ticketDataSource.getTicket(id);
  }
}