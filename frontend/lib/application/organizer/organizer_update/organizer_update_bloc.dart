import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth.dart';

import 'package:frontend/domain/organizer/organizer.dart';

import 'package:frontend/data/local/local_database/local_storage.dart'
    as local_storage;

import 'package:frontend/data/local/shared_pref/shared_pref.dart';

part 'organizer_update_event.dart';
part 'organizer_update_state.dart';
part 'organizer_update_bloc.freezed.dart';

class OrganizerUpdateBloc
    extends Bloc<OrganizerUpdateEvent, OrganizerUpdateState> {
  final OrganizerRepository organizerRepository;
  OrganizerUpdateBloc(this.organizerRepository)
      : super(OrganizerUpdateState.initial()) {
    on<_OrganizationNameChanged>((event, emit) {
      emit(state.copyWith(
        organizationName: event.organizationName,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_EmailChanged>((event, emit) {
      emit(state.copyWith(
        email: event.email,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_PasswordChanged>((event, emit) {
      emit(state.copyWith(
        password: event.password,
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_UpdateOrganizerPressed>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        updateFailureOrSuccessOption: none(),
      ));

      final organizatioNameIsValid = state.organizationName != null &&
          state.organizationName!.isNotEmpty;
      final emailIsValid = state.email != null && state.email!.isNotEmpty;

      final organizerId = await local_storage.getUserId();

      final failureOrSuccess = await organizerRepository.updateOrganizer(
          event.organizerId,
          OrganizerUpdateModel(
            organizerName: state.organizationName,
            email: state.email,
            password: state.password,
          ));

      emit(state.copyWith(
        isLoading: false,
        updateFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
