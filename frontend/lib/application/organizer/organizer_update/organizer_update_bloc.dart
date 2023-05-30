import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/event/event.dart';

import 'package:frontend/domain/organizer/organizer.dart';

import 'package:frontend/data/local/local_database/local_storage.dart';


part 'organizer_update_event.dart';
part 'organizer_update_state.dart';

class OrganizerUpdateBloc
    extends Bloc<OrganizerUpdateEvent, OrganizerUpdateState> {
  final OrganizerRepository organizerRepository;

  final LocalDatabase local_storage = LocalDatabase.getInstance;

  OrganizerUpdateBloc(this.organizerRepository)
      : super(OrganizerUpdateState.initial()) {
    on<_OrganizationNameChanged>((event, emit) {
      print('hrtrtrtrtrt');
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

    on<_ProfileImageChanged>((event, emit) {
      print('herererererdkjfhkakh aisdhfkhasdf');
      print(event.profileImage.length);
      emit(state.copyWith(
        profileImage: 'event.profileImage',
        updateFailureOrSuccessOption: none(),
      ));
    });

    on<_UpdateOrganizerPressed>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        updateFailureOrSuccessOption: none(),
      ));

      final organizatioNameIsValid =
          state.organizationName != null && state.organizationName!.isNotEmpty;
      final emailIsValid = state.email != null && state.email!.isNotEmpty;
      final passwordIsValid =
          state.password != null && state.password!.isNotEmpty;

      // final organizerId = await local_storage.getUserId();

      final organizerId = '6470990dc88fe11a50ab83fc';
      print('length of image');
      print(state.profileImage!.length);

      Either<OrganizerFailure, Object>? failureOrSuccess;

      print('got the data');

      if (!organizatioNameIsValid || !emailIsValid || !passwordIsValid) {
        print('in if');
        print(state.organizationName);
        print(state.email);
        print(state.password);
        failureOrSuccess = left(OrganizerFailure.invalidOrganizer());
      }

      else {
        print('in else');
        failureOrSuccess = await organizerRepository.updateOrganizer(
          organizerId,
          OrganizerUpdateModel(
            organizerName: state.organizationName,
            email: state.email,
            password: state.password,
            profileImage: state.profileImage,
          ));
      }

      emit(state.copyWith(
        isLoading: false,
        updateFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));

    });
  }
}
