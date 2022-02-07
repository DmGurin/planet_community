import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/screens/uranus_screen/uranus_dialog/u_body.dart';
import 'package:planet_community/style/app_colors.dart';

void uDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          backgroundColor: AppColors.darkBlue,
          child: UBody(),
        );
      });
}
