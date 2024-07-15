import 'package:flutter/material.dart';

import '../../../../../core/component/custom_text_widget.dart';

class ProductItemInfo extends StatelessWidget {
  const ProductItemInfo({super.key, required this.title, required this.titleDesc});
  final String title;
  final String titleDesc;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextWidget(title: title,fontSize: 14,),
        const SizedBox(width: 10,),
        CustomTextWidget(title: titleDesc,fontSize: 14,)
      ],
    );
  }
}