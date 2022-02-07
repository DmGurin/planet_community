import 'package:flutter/material.dart';
import 'package:planet_community/screens/uranus_screen/uranus_dialog/uran_body.dart';
import 'package:planet_community/style/app_colors.dart';


void uranDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          backgroundColor: AppColors.greyy,
          child: UranBody(),
        );
      });
}
