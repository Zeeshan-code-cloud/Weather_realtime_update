import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/utils/app_colors.dart';

class MyButton extends StatelessWidget {
  VoidCallback onTap;
  String? title;
  double? radius;
  double? height;
  double? width;
  Color? btn_color;

   MyButton({
     super.key,
     required this.height,
     required this.width,
     required this.title,
     required this.onTap,
     required this.radius
   });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!),
          color: AppColors.button_color
        ),
        child: Center(
          child: Text(title.toString(),
            style: TextStyle(fontSize: 15.0,
                fontWeight: FontWeight.w600,color: AppColors.text_color), ),
        ),
      ),
    );
  }
}
