import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/event/event.dart';

import 'package:frontend/domain/organizer/organizer.dart';

import 'package:shared_preferences/shared_preferences.dart';

// import 'package:frontend/data/local/local_database/local_storage.dart';

part 'organizer_update_event.dart';
part 'organizer_update_state.dart';

class OrganizerUpdateBloc
    extends Bloc<OrganizerUpdateEvent, OrganizerUpdateState> {
  final OrganizerRepository organizerRepository;

  // final LocalDatabase local_storage = LocalDatabase.getInstance;

  OrganizerUpdateBloc(this.organizerRepository)
      : super(OrganizerUpdateState.initial()) {
    on<_OrganizationNameChanged>((event, emit) {
      print('hrtrtrtrtrt');
      print(event.organizationName);
      emit(state.copyWith(
        organizationName: event.organizationName,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_EmailChanged>((event, emit) {
      print('email changed in bloc');
      emit(state.copyWith(
        email: event.email,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_PasswordChanged>((event, emit) {
      print('password changed in bloc');
      emit(state.copyWith(
        password: event.password,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_ProfileImageChanged>((event, emit) {
      emit(state.copyWith(
        profileImage: event.profileImage,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_UpdateOrganizerPressed>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        updateFailureOrSuccessOption: none(),
      ));

      print('got the button press');

      SharedPreferences prefs = await SharedPreferences.getInstance();
      final organizerData = json.decode(prefs.getString('userData')!);

      final organizerId = json.decode(organizerData)['_id'];

      print('got the organizer data IN THE BLOC');

      print(organizerId);

      OrganizerUpdateModel data = OrganizerUpdateModel();
      print('init data');

      print('here is org name ${state.organizationName}');

      if (state.organizationName != null) {
        data.organizationName = state.organizationName;
      }

      if (state.email != null) {
        data.email = state.email;
      }

      if (state.password != null) {
        data.password = state.password;
      }

      if (state.profileImage != null) {
        data.profileImage = state.profileImage;
      }

      print('weyneeeeeeeeeeee');

      print('got user data');

      print(data.toJson());

      Either<OrganizerFailure, Object>? failureOrSuccess;

      print('got the data');

      failureOrSuccess =
          await organizerRepository.updateOrganizer(organizerId, data);

      emit(state.copyWith(
        isLoading: false,
        updateFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
