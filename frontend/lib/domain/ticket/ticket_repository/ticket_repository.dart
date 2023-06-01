import 'package:dartz/dartz.dart';

import 'package:frontend/domain/ticket/ticket.dart';

abstract class TicketRepository {
  Future<Either<TicketFailure, List<dynamic>>> getAllTickets();
  Future<Either<TicketFailure, Object>> getTicket(String id);
  Future<Either<TicketFailure, Object>> createTicket(TicketCreateModel ticket);
  Future<Either<TicketFailure, Object>> updateTicket(TicketUpdateModel ticket);
  Future<Either<TicketFailure, Object>> deleteTicket(String id);
  Future<Either<TicketFailure, List<dynamic>>> getTicketsByUserId(String userId);
}