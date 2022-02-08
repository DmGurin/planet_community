import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/v_body.dart';
import 'package:planet_community/style/app_colors.dart';

void vDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          backgroundColor: AppColors.darkGrey,
          child: VBody(),
        );
      });
}
