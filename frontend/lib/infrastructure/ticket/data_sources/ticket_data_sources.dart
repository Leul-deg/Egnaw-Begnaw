import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:frontend/domain/ticket/ticket.dart';

import '../../../data/local/local_database/local_storage.dart';

class TicketDataSource implements TicketRepository {
  final http.Client client = http.Client();
  final LocalDatabase localStorage = LocalDatabase.instance;

  // final API_URL = "http://localhost:3000";
  final API_URL = "http://192.168.56.1:3000";

  TicketDataSource();

  @override
  Future<Either<TicketFailure, Object>> createTicket(
      TicketCreateModel ticketCreateModel) async {
    print(ticketCreateModel.toJson());
    final response = await client.post(
      Uri.parse('$API_URL/ticket'),
      body: ticketCreateModel.toJson(),
    );

    print(response.statusCode);

    if (response.statusCode == 201) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return Left(TicketFailure.invalidTicket());
    } else {
      return Left(TicketFailure.serverError());
    }
  }

  @override
  Future<Either<TicketFailure, Object>> updateTicket(
      TicketUpdateModel ticketUpdateModel) async {
    final response = await client.put(
      Uri.parse('$API_URL/ticket/${ticketUpdateModel.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: ticketUpdateModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return Left(TicketFailure.invalidTicket());
    } else {
      return Left(TicketFailure.serverError());
    }
  }

  @override
  Future<Either<TicketFailure, Object>> deleteTicket(String id) async {
    final response = await client.delete(
      Uri.parse('$API_URL/ticket/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return const Right(Object);
    } else if (response.statusCode == 400) {
      return Left(TicketFailure.invalidTicket());
    } else {
      return Left(TicketFailure.serverError());
    }
  }

  @override
  Future<Either<TicketFailure, List<Object>>> getAllTickets() async {
    var ticks = await localStorage.getter('tickets');
    if (ticks.isNotEmpty) {
      var ans = await localStorage.getter('tickets');
      return Right(ans);
    }

    final response = await client.get(
      Uri.parse('$API_URL/ticket'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      final tickets = json.decode(response.body);
      await localStorage.addTickets(tickets);

      return Right(tickets);
    } else if (response.statusCode == 400) {
      return Left(TicketFailure.invalidTicket());
    } else {
      return Left(TicketFailure.serverError());
    }
  }

  @override
  Future<Either<TicketFailure, Object>> getTicket(String id) async {
    final response = await client.get(
      Uri.parse('$API_URL/ticket/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return Right(json.decode(response.body));
    } else if (response.statusCode == 400) {
      return Left(TicketFailure.invalidTicket());
    } else {
      return Left(TicketFailure.serverError());
    }
  }

  // get tickets by user id
  @override
  Future<Either<TicketFailure, List<dynamic>>> getTicketsByUserId(
      String id) async {
    try {
      print(id);
      var ticks = await localStorage.getter('tickets');
      print("got here save");
      if (ticks.isEmpty) {
        await getAllTickets();
      }

      print("got here save");

      final response = await client.get(
        Uri.parse('$API_URL/ticket/user/$id'),
      );

      print(response.statusCode);

      if (response.statusCode == 200) {
        final tickets = json.decode(response.body);

        return Right(tickets);
      } else {
        var ts = await localStorage.getTicketsByUserId(id);
        if (ts.isNotEmpty) {
          return Right(ts);
        }
        return Left(TicketFailure.serverError());
      }
    } catch (e) {
      var ts = await localStorage.getTicketsByUserId(id);
      if (ts.isNotEmpty) {
        return Right(ts);
      }
      
              return Left(TicketFailure.serverError());


      
    }
  }
}
