import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:frontend/domain/ticket/ticket.dart';

class TicketDataSource implements TicketRepository {
  final http.Client client;

  final API_URL = dotenv.env['API_URL'];

  TicketDataSource({
    required this.client,
  });

  @override
  Future<Either<TicketFailure, TicketModel>> createTicket(
      TicketCreateModel ticketCreateModel) async {
    final response = await client.post(
      Uri.parse('$API_URL/ticket'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: ticketCreateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(TicketModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(TicketFailure.invalidTicket());
    } else {
      return const Left(TicketFailure.serverError());
    }
  }

  @override
  Future<Either<TicketFailure, TicketModel>> updateTicket(
      TicketUpdateModel ticketUpdateModel) async {
    final response = await client.put(
      Uri.parse('$API_URL/ticket/${ticketUpdateModel.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: ticketUpdateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(TicketModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(TicketFailure.invalidTicket());
    } else {
      return const Left(TicketFailure.serverError());
    }
  }

  @override
  Future<Either<TicketFailure, Unit>> deleteTicket(String id) async {
    final response = await client.delete(
      Uri.parse('$API_URL/ticket/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return const Right(unit);
    } else if (response.statusCode == 400) {
      return const Left(TicketFailure.invalidTicket());
    } else {
      return const Left(TicketFailure.serverError());
    }
  }

  @override
  Future<Either<TicketFailure, List<TicketModel>>> getAllTickets() async {
    final response = await client.get(
      Uri.parse('$API_URL/ticket'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      final tickets = json.decode(response.body) as List;
      final ticketsList = tickets.map((ticket) {
        return TicketModel.fromJson(ticket);
      }).toList();
      return Right(ticketsList);
    } else if (response.statusCode == 400) {
      return const Left(TicketFailure.invalidTicket());
    } else {
      return const Left(TicketFailure.serverError());
    }
  }

  @override
  Future<Either<TicketFailure, TicketModel>> getTicket(String id) async {
    final response = await client.get(
      Uri.parse('$API_URL/ticket/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return Right(TicketModel.fromJson(json.decode(response.body)));
    } else if (response.statusCode == 400) {
      return const Left(TicketFailure.invalidTicket());
    } else {
      return const Left(TicketFailure.serverError());
    }
  }
  

}
