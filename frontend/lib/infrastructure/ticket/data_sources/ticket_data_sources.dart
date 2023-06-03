import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:frontend/domain/ticket/ticket.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/local/local_database/local_storage.dart';

class TicketDataSource implements TicketRepository {
  final http.Client client = http.Client();
  final LocalDatabase localStorage = LocalDatabase.instance;

  // final API_URL = "http://localhost:3000";
  final API_URL = "http://10.0.2.2:3000";

  TicketDataSource();

  @override
  Future<Either<TicketFailure, Object>> createTicket(
      TicketCreateModel ticketCreateModel) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    print('here is the ticket i recieved');
    print(ticketCreateModel.toJson());
    final response = await client.post(Uri.parse('$API_URL/ticket'),
        body: ticketCreateModel.toJson(),
        headers: {'Authorization': 'Bearer $jwtToken'});

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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    final response = await client.put(
      Uri.parse('$API_URL/ticket/${ticketUpdateModel.id}'),
      headers: {'Authorization': 'Bearer $jwtToken'},
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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    final response = await client.delete(
      Uri.parse('$API_URL/ticket/$id'),
      headers: {'Authorization': 'Bearer $jwtToken'},
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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');

    final response = await client.get(Uri.parse('$API_URL/ticket'),
        headers: {'Authorization': 'Bearer $jwtToken'});

    if (response.statusCode == 200) {
      final tickets = json.decode(response.body);
      // print('saving them new tickets');
      // await localStorage.addTickets(tickets);
      print(tickets);

      return Right(tickets);
    } else if (response.statusCode == 400) {
      var ticks = await localStorage.getter('tickets');
      if (ticks.isNotEmpty) {
        return Right(ticks);
      }
      return Left(TicketFailure.invalidTicket());
    } else {
      var ticks = await localStorage.getter('tickets');
      if (ticks.isNotEmpty) {
        return Right(ticks);
      }
      return Left(TicketFailure.serverError());
    }
  }

  @override
  Future<Either<TicketFailure, Object>> getTicket(String id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    final response = await client.get(Uri.parse('$API_URL/ticket/$id'),
        headers: {'Authorization': 'Bearer $jwtToken'});

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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jwtToken = prefs.getString('jwt_token');
    try {
      print(id);
      var ticks = await localStorage.getter('tickets');
      print("got here save");

      if (ticks.isEmpty) {
        print('calling all tickets');
        await getAllTickets();
      }

      print("got here save");
      print('the id is $id');

      final response = await client.get(Uri.parse('$API_URL/ticket/user/$id'),
          headers: {
            'Authorization': 'Bearer $jwtToken'
          }).timeout(const Duration(seconds: 5));

      print(response.statusCode);
      print('that was tje code');

      if (response.statusCode == 200) {

        final tickets = json.decode(response.body);

        await localStorage.addTickets(tickets);

        return Right(tickets);
      } else {
        var ts = await localStorage.getTicketsByUserId(id);
        if (ts.isNotEmpty) {
          return Right(ts);
        }
        return Left(TicketFailure.serverError());
      }
    } catch (e) {
      print(e);
      var ts = await localStorage.getTicketsByUserId(id);
      if (ts.isNotEmpty) {
        print('here is the local data');
        print(ts);
        return Right(ts);
      }
      print('oops its empty yo');

      return Left(TicketFailure.serverError());
    }
  }
}
