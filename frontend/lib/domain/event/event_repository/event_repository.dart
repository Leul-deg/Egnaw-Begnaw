import 'package:dartz/dartz.dart';

import 'package:frontend/domain/event/event.dart';

abstract class EventRepository {
  Future<Either<EventFailure, List<Unit>>> getAllEvents();
  Future<Either<EventFailure, Unit>> getEvent(String id);
  Future<Either<EventFailure, Unit>> createEvent(EventCreateModel event);
  Future<Either<EventFailure, Unit>> updateEvent(String eventID, EventUpdateModel event);
  Future<Either<EventFailure, Unit>> deleteEvent(String id);
}
