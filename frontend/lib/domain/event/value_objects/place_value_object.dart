import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'place_value_object.freezed.dart';
part 'place_value_object.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    required String value,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  static Future<Place> fromString(String value) async {
    if (value.isEmpty) {
      throw ArgumentError('Place cannot be empty');
    }
    final apiKey = 'YOUR_API_KEY_HERE';
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?address=$value&key=$apiKey';
    final response = await http.get(Uri.parse(url));
    final data = json.decode(response.body);
    if (data['status'] != 'OK') {
      throw ArgumentError('Invalid place');
    }
    
    return Place(value: data['results'][0]['formatted_address']);
  }
}