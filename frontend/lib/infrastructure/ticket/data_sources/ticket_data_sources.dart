import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/data/local/local_database/local_storage.dart';
import 'package:http/http.dart' as http;

import 'package:frontend/domain/ticket/ticket.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TicketDataSource implements TicketRepository {
  final LocalDatabase localStorage = LocalDatabase.instance;
  final http.Client client = http.Client();

  final API_URL = "http://localhost:3000";

  TicketDataSource();

  @override
  Future<Either<TicketFailure, Object>> createTicket(
      TicketCreateModel ticketCreateModel) async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final String? jwtToken = prefs.getString('jwt_token');
        await localStorage.insert('tickets', ticketCreateModel.toJson());
    print(ticketCreateModel.toJson());
    final response = await client.post(
      Uri.parse('$API_URL/ticket'),
      body: ticketCreateModel.toJson(),
         headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}

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
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final String? jwtToken = prefs.getString('jwt_token');
    final response = await client.put(
      Uri.parse('$API_URL/ticket/${ticketUpdateModel.id}'),
      headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}
,
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
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
         'Authorization': 'Bearer $jwtToken'

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
  Future<Either<TicketFailure, List<Map<String , Object?>>>> getAllTickets() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
        final String? jwtToken = prefs.getString('jwt_token');

    var ticks = await localStorage.getter('tickets');
    if (ticks.isNotEmpty){
      var ans = await localStorage.getter('tickets');
      return Right(ans);
    }
    final response = await client.get(
      Uri.parse('$API_URL/ticket'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
         'Authorization': 'Bearer $jwtToken'

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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
        final String? jwtToken = prefs.getString('jwt_token');


    var ticks = await localStorage.getter('tickets');
    if (ticks.isEmpty){
      await getAllTickets();
    }



    final response = await client.get(
      Uri.parse('$API_URL/ticket/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
         'Authorization': 'Bearer $jwtToken'

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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
        final String? jwtToken = prefs.getString('jwt_token');

    var ticks = await localStorage.getter('tickets');
    if (ticks.isEmpty){
      await getAllTickets();
    }
    
    print('in the ticket ds');
    final response = await client.get(
      Uri.parse('$API_URL/ticket/user/$id'),
      headers: {'Content-Type': 'application/json; charset=UTF-8','Authorization': 'Bearer $jwtToken'}

    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      final tickets = json.decode(response.body);

      return Right(tickets);
    } else if (response.statusCode == 400) {
      return Left(TicketFailure.invalidTicket());
    } else {
      return Left(TicketFailure.serverError());
    }
  }
}
