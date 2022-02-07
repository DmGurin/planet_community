import 'package:flutter/material.dart';
import 'package:planet_community/screens/uranus_screen/uranus_dialog/ur_body.dart';
import 'package:planet_community/style/app_colors.dart';

void urDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          backgroundColor: AppColors.black,
          child: UrBody(),
        );
      });
}
