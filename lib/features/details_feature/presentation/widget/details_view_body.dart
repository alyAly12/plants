import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants/core/component/custom_button.dart';
import 'package:plants/core/utils/app_strings.dart';
import 'package:plants/features/home_feature/presentation/bloc/home_bloc.dart';
import 'package:plants/features/home_feature/presentation/widgets/product_widgets/product_item_info.dart';

import '../../../../core/services/service_locator.dart';


class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody(
      {super.key, required this.name, required this.imageUrl});

  final String name;
  final String imageUrl;


  @override
  Widget build(BuildContext context) {

    return BlocProvider(
  create: (context) => HomeBloc(sl())..add(HomeSettingEvent()),
  child: BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if(state is HomeSuccessState){
          return SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black
                        ),
                      ),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  ProductItemInfo(title: AppStrings.name, titleDesc: name),
                  const SizedBox(height: 15,),
                  ProductItemInfo(title: AppStrings.family, titleDesc: state.homePlantsResponseEntity[0].family),
                  const SizedBox(height: 15,),
                  ProductItemInfo(title: AppStrings.index, titleDesc: state.homePlantsResponseEntity[0].bibliography),
                  const SizedBox(height: 15,),
                  ProductItemInfo(title: AppStrings.author, titleDesc: state.homePlantsResponseEntity[0].author),
                  const SizedBox(height: 35,),
                  CustomButton(
                      buttonHeight: 50,
                      textWeight: FontWeight.w500,
                      onPressed: () {},
                      title: AppStrings.moreDetails)
                ],
              ),
            ),
          );
        }else{
          return SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black
                        ),
                      ),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  ProductItemInfo(title: AppStrings.name, titleDesc: name),
                  const SizedBox(height: 15,),
                  ProductItemInfo(title: AppStrings.family, titleDesc: 'N/A'),
                  const SizedBox(height: 15,),
                  ProductItemInfo(title: AppStrings.index, titleDesc: 'N/A'),
                  const SizedBox(height: 15,),
                  ProductItemInfo(title: AppStrings.author, titleDesc:'N/A'),
                  const SizedBox(height: 35,),
                  CustomButton(
                      buttonHeight: 50,
                      textWeight: FontWeight.w500,
                      onPressed: () {},
                      title: AppStrings.moreDetails)
                ],
              ),
            ),
          );
        }

      },
    ),
);
  }
}
