import 'package:dartz/dartz.dart';
import 'package:plants/core/base_usecase/base_usecase.dart';
import 'package:plants/features/home_feature/domain/repository/home_base_repo.dart';
import '../../../../core/exceptions/failure.dart';
import '../entity/home_plants_response_entity.dart';

class GetAllPlantsUseCase implements BaseUseCase<List<HomePlantsResponseEntity>,NoParameters> {
  final HomeRepository homeRepository;

  GetAllPlantsUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<HomePlantsResponseEntity>>> call(
      NoParameters no) async {
    return await homeRepository.callAll();
  }
}
