import 'package:dartz/dartz.dart';

import 'package:frontend/domain/event/event.dart';

abstract class EventRepository {
  Future<Either<EventFailure, List<dynamic>>> getAllEvents();
  Future<Either<EventFailure, Object>> getEvent(String id);
  Future<Either<EventFailure, Object>> createEvent(EventCreateModel event);
  Future<Either<EventFailure, Object>> updateEvent(String eventID, EventUpdateModel event);
  Future<Either<EventFailure, Object>> deleteEvent(String id);
}
