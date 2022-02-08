import 'package:flutter/material.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/vo_body.dart';
import 'package:planet_community/style/app_colors.dart';

void voDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          backgroundColor: AppColors.darkBlue,
          child: VoBody(),
        );
      });
}
