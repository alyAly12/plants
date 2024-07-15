import 'package:flutter/material.dart';

import '../../../../../core/component/custom_text_widget.dart';


class HomeCountryNavItem extends StatelessWidget {
  const HomeCountryNavItem({super.key, required this.title, this.onTap, this.color,});
  final String title;
  final void Function()? onTap;
  final Color?  color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap:onTap ,
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black,width: 1),
          borderRadius: BorderRadius.circular(0),
          color:color,
        ),
        child: Center(child: CustomTextWidget(title: title,fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black,)),
      ),
    );
  }
}