import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants/features/home_feature/data/models/home_plants_resposne_model.dart';
import 'package:plants/features/home_feature/domain/entity/home_plants_response_entity.dart';
import '../../../../core/base_usecase/base_usecase.dart';
import '../../domain/usecase/get_all_plants_usecase.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetAllPlantsUseCase getAllPlantsUseCase;

  HomeBloc(this.getAllPlantsUseCase) : super(HomeInitial()) {
    on<HomeSettingEvent>(_getAllPlants);
  }

  FutureOr<void> _getAllPlants(
      HomeSettingEvent event, Emitter<HomeState> emit) async {
    final result = await getAllPlantsUseCase.call(const NoParameters());
    result.fold((l) {
      emit(HomeFailureState(l.message));
    }, (r) => emit(HomeSuccessState(r)));
  }

  @override
  void onChange(Change<HomeState> change) {
    print(change);
    super.onChange(change);
  }
}
