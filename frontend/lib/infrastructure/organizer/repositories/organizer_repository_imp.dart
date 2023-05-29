import 'package:dartz/dartz.dart';
import 'package:frontend/domain/organizer/organizer.dart';
import 'package:frontend/infrastructure/organizer/data_sources/organizer_data_sources.dart'; 
class OrganizerRepositoryImp implements OrganizerRepository{
  final OrganizerDataSource organizerDataSource;  
  OrganizerRepositoryImp({
    required this.organizerDataSource,
  });
  @override
  Future<Either<OrganizerFailure, OrganizerModel>> getOrganizerData(String id) async {
    return await organizerDataSource.getOrganizerData(id);
  }
  @override
  Future<Either<OrganizerFailure, List<OrganizerModel>>> getAllOrganizers(OrganizerModel allOrganizer) async {
    return await organizerDataSource.getAllOrganizers(allOrganizer);
  }
  // @override
  // Future<Either<OrganizerFailure, OrganizerUpdateModel>> updateOrganizer(OrganizerUpdateModel newOrganizer , String id) async {
  //   return await organizerDataSource.updateOrganizer(newOrganizer);
  // }

  @override
  Future<Either<OrganizerFailure, OrganizerUpdateModel>> updateOrganizer(String organizerId, OrganizerUpdateModel newOrganizer) async {
    return await organizerDataSource.updateOrganizer(organizerId, newOrganizer);
  }

  @override
  Future<Either<OrganizerFailure, Object>> deleteOrganizer(String id) async {
    return await organizerDataSource.deleteOrganizer(id);
  }
}