import 'package:dartz/dartz.dart';

import 'package:frontend/domain/ticket/ticket.dart';

abstract class TicketRepository {
  Future<Either<TicketFailure, List<TicketModel>>> getAllTickets();
  Future<Either<TicketFailure, TicketModel>> getTicket(String id);
  Future<Either<TicketFailure, TicketModel>> createTicket(TicketCreateModel ticket);
  Future<Either<TicketFailure, TicketModel>> updateTicket(TicketUpdateModel ticket);
  Future<Either<TicketFailure, Unit>> deleteTicket(String id);
}