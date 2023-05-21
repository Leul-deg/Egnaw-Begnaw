import 'package:dartz/dartz.dart';


import 'package:frontend/domain/event/event.dart';
import 'package:frontend/infrastructure/event/data_sources/event_data_sources.dart';

class EventRepositoryImp implements EventRepository {
  final EventDataSource eventDataSource;
  EventRepositoryImp({
    required this.eventDataSource,
  });

  // create event
  @override
  Future<Either<EventFailure, EventModel>> createEvent(
      EventCreateModel eventCreateModel) async {
        return await eventDataSource.createEvent(eventCreateModel);
  }

  // update event
  @override
  Future<Either<EventFailure, EventModel>> updateEvent(
      EventUpdateModel eventUpdateModel) async {
        return await eventDataSource.updateEvent(eventUpdateModel);
  }
  
  @override
  Future<Either<EventFailure, Unit>> deleteEvent(String id) async {
    return await eventDataSource.deleteEvent(id);
  }
  
  @override
  Future<Either<EventFailure, List<EventModel>>> getAllEvents() async {
    return await eventDataSource.getAllEvents();
  }
  
  @override
  Future<Either<EventFailure, EventModel>> getEvent(String id) async {
    return await eventDataSource.getEvent(id);
  }
}