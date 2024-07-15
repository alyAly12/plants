import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants/core/component/custom_text_widget.dart';
import 'package:plants/core/utils/app_colors.dart';
import 'package:plants/core/utils/app_strings.dart';
import 'package:plants/features/home_feature/data/models/home_plants_resposne_model.dart';
import 'package:plants/features/home_feature/presentation/bloc/home_bloc.dart';
import 'package:plants/features/home_feature/presentation/widgets/home_view_body.dart';

import '../../../../core/services/service_locator.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => HomeBloc(sl())..add(HomeSettingEvent()),
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: AppColors.blueColor,
          centerTitle: true,
          title: CustomTextWidget(title: AppStrings.plants,
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
