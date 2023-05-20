import 'package:dartz/dartz.dart';

import 'package:frontend/domain/event/event.dart';

abstract class EventRepository {
  Future<Either<EventFailure, List<EventModel>>> getAllEvents();
  Future<Either<EventFailure, EventModel>> getEvent(String id);
  Future<Either<EventFailure, EventModel>> createEvent(EventCreateModel event);
  Future<Either<EventFailure, EventModel>> updateEvent(EventUpdateModel event);
  Future<Either<EventFailure, Unit>> deleteEvent(String id);
}
