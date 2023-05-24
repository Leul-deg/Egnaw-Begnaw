import 'package:dartz/dartz.dart';

import 'package:frontend/domain/ticket/ticket.dart';

abstract class TicketRepository {
  Future<Either<TicketFailure, List<Unit>>> getAllTickets();
  Future<Either<TicketFailure, Unit>> getTicket(String id);
  Future<Either<TicketFailure, Unit>> createTicket(TicketCreateModel ticket);
  Future<Either<TicketFailure, Unit>> updateTicket(TicketUpdateModel ticket);
  Future<Either<TicketFailure, Unit>> deleteTicket(String id);
}