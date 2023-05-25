import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth.dart';

import 'package:frontend/domain/organizer/organizer.dart';

import 'package:frontend/data/local/local_database/local_storage.dart';

import 'package:frontend/data/local/shared_pref/shared_pref.dart';

part 'organizer_update_event.dart';
part 'organizer_update_state.dart';
part 'organizer_update_bloc.freezed.dart';
class OrganizerUpdateBloc extends Bloc<OrganizerUpdateEvent , OrganizerUpdateState>{

  final OrganizerRepository organizerRepository;
  OrganizerUpdateBloc(this.organizerRepository) : super(OrganizerUpdateState.initial());

  @override
  Stream<OrganizerUpdateState> mapEventToState(
    OrganizerUpdateEvent event,
  ) async* {
    yield* event.map(
        // started event
        started: (e) async* {},
        // organizationNameChanged event
        organizationNameChanged: (e) async* {
          yield state.copyWith(
            organizationName: e.organizationName,
            updateFailureOrSuccessOption: none(),
          );
        },
        // updateOrganizerPressed event
        updateOrganizerPressed: (e) async* {
          Either<OrganizerFailure, Unit>? failureOrSuccess;

          if (state.organizationName == '') {
            failureOrSuccess = left(const OrganizerFailure.invalidOrganizer());
          } else {
            final String? userId = await getUserId();
            final String? organizerId = e.organizerId;

            if (userId == null || organizerId == null) {
              yield state.copyWith(
                isLoading: false,
                updateFailureOrSuccessOption: some(left(const OrganizerFailure.invalidOrganizer())),
              );
              return;
            }

            final OrganizerUpdateModel organizer = OrganizerUpdateModel(
              organizerName: state.organizationName, id: '',
            );

            failureOrSuccess = (await organizerRepository.updateOrganizer(organizer)) as Either<OrganizerFailure, Unit>?;
          }

          yield state.copyWith(
            isLoading: false,
            updateFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        },
    );
  }
}