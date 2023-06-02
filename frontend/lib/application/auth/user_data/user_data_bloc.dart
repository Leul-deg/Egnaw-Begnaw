import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';

import 'package:shared_preferences/shared_preferences.dart';

part 'user_data_event.dart';
part 'user_data_state.dart';

class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  UserDataBloc() : super(UserDataState.initial()) {
    on<_GetUserData>((event, emit) async {
      print('getting user data');
      // get the user data from shared preferences if it exists
      final prefs = await SharedPreferences.getInstance();

      print('here is the prefs');
      print(json.decode(prefs.getString('userData') ?? '{}'));

      var userData =
          json.decode(prefs.getString('userData') ?? '{}');

      
      ('here is user data in bloc');
      print(userData);

      emit(state.copyWith(userData: userData));
    });
  }
}
