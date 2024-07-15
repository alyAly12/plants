import 'package:dartz/dartz.dart';
import 'package:plants/features/home_feature/domain/entity/home_plants_response_entity.dart';
import '../../../../core/exceptions/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<HomePlantsResponseEntity>>> callAll();
}
