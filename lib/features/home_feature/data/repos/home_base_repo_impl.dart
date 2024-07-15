import 'package:dartz/dartz.dart';
import 'package:plants/core/exceptions/failure.dart';
import 'package:plants/core/exceptions/server_exceptions.dart';
import 'package:plants/features/home_feature/data/data_source/home_data_source.dart';
import 'package:plants/features/home_feature/domain/entity/home_plants_response_entity.dart';
import 'package:plants/features/home_feature/domain/repository/home_base_repo.dart';

class HomeBaseRepoImpl implements HomeRepository {
  final HomeDataSource homeDataSource;

  HomeBaseRepoImpl(this.homeDataSource);

  @override
  Future<Either<Failure, List<HomePlantsResponseEntity>>> callAll()async {
   final result = await homeDataSource.getAllPlants();
   try{
     return right(result);
   }on ServerException catch(fail){
     return left(ServerFailure(fail.errorMessageModel.statusMessage));
   }
  }
}
