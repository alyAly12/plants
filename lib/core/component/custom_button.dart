import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import 'custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.buttonHeight,
    this.textSize = 16,
    this.textWeight,
  });

  final void Function() onPressed;
  final String title;
  final double? buttonHeight;
  final double? textSize;
  final FontWeight? textWeight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: buttonHeight,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blueColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                title: title,
                fontSize: textSize ?? 16,
                fontWeight: textWeight ?? FontWeight.w300,
                color: Colors.black,
              ),
            ],
          )),
    );
  }
}
