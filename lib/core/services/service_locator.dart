
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:plants/features/home_feature/data/data_source/home_data_source.dart';
import 'package:plants/features/home_feature/data/repos/home_base_repo_impl.dart';
import 'package:plants/features/home_feature/domain/repository/home_base_repo.dart';
import 'package:plants/features/home_feature/domain/usecase/get_all_plants_usecase.dart';
import 'package:plants/features/home_feature/presentation/bloc/home_bloc.dart';

import 'api_service.dart';
import 'network_service.dart';

final GetIt sl = GetIt.instance;

class ServiceLocator{
  void init(){
  //   Bloc
    sl.registerFactory(()=>HomeBloc(sl()));
  //   UseCases
    sl.registerLazySingleton(()=>GetAllPlantsUseCase(sl()));
  //   Repos
    sl.registerLazySingleton<HomeRepository>(()=>HomeBaseRepoImpl(sl()));
  //   DataSource
    sl.registerLazySingleton<HomeDataSource>(()=>HomeDataSourceImpl( ));

  }
}