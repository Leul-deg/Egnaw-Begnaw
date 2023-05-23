import 'package:dartz/dartz.dart';
// import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/domain/organizer/organizer.dart';
// import 'package:frontend/domain/user/user.dart';


abstract class OrganizerRepository {
  Future<Either<OrganizerFailure, OrganizerModel>> getOrganizerData(String id);
  // Future<Either<OrganizerFailure, OrganizerUpdateModel>> updateOrganizerData(OrganizerModel newData);
   Future<Either<OrganizerFailure, List<OrganizerModel>>> getAllOrganizers(OrganizerModel allOrganizer);
   Future<Either<OrganizerFailure,OrganizerUpdateModel>> updateOrganizer(OrganizerUpdateModel newOrganizer);
   Future<Either<OrganizerFailure,Unit>>deleteOrganizer(String id);
}
