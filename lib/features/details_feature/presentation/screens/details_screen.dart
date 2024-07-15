import 'package:flutter/material.dart';
import 'package:plants/core/component/custom_text_widget.dart';
import 'package:plants/core/utils/app_strings.dart';
import 'package:plants/features/details_feature/presentation/widget/details_view_body.dart';

import '../../../../core/utils/app_colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.name, required this.imageUrl});
  final String name;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.blueColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: CustomTextWidget(
          title: AppStrings.plantDetails,
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      body:  DetailsViewBody(name:name, imageUrl: imageUrl,),
    );
  }
}
