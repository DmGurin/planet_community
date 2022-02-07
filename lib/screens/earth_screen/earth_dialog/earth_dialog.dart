import 'package:flutter/material.dart';
import 'package:planet_community/screens/earth_screen/earth_dialog/earth_body.dart';
import 'package:planet_community/style/app_colors.dart';

void earthDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: AppColors.darkBlue,
          child: const EarthBody(),
        );
      });
}
