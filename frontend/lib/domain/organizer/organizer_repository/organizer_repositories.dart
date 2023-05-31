import 'package:dartz/dartz.dart';
// import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/domain/organizer/organizer.dart';
// import 'package:frontend/domain/user/user.dart';


abstract class OrganizerRepository {
  Future<Either<OrganizerFailure, Object>> getOrganizerData(String id);
  // Future<Either<OrganizerFailure, OrganizerUpdateModel>> updateOrganizerData(OrganizerModel newData);
   Future<Either<OrganizerFailure, List<Object>>> getAllOrganizers(OrganizerModel allOrganizer);
   Future<Either<OrganizerFailure,Object>> updateOrganizer(String organizerId, OrganizerUpdateModel newOrganizer);
   Future<Either<OrganizerFailure,Object>>deleteOrganizer(String id);
}
