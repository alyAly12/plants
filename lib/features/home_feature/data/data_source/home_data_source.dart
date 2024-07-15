
import 'package:dio/dio.dart';
import 'package:plants/core/exceptions/error_mssage_model.dart';
import 'package:plants/core/exceptions/server_exceptions.dart';
import 'package:plants/core/utils/app_consts.dart';
import 'package:plants/features/home_feature/data/models/home_plants_resposne_model.dart';

abstract class HomeDataSource {
  Future<List<HomePlantsResponseModel>> getAllPlants();
}

class HomeDataSourceImpl implements HomeDataSource {
  var headers = {'Authorization':'Bearer ${AppConsts.token}'};

  @override
  Future<List<HomePlantsResponseModel>> getAllPlants() async {
    final response = await Dio().request(AppConsts.allPlantsPath,
        options: Options(method: 'GET', headers: headers));
    if (response.statusCode == 200){
      return List<HomePlantsResponseModel>.from((response.data['data'] as List)
          .map((e) => HomePlantsResponseModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
