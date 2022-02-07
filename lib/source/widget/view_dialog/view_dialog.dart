import 'package:flutter/material.dart';
import 'package:planet_community/source/widget/view_dialog/view_body.dart';
import 'package:planet_community/style/app_colors.dart';

void showViewDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return  Dialog(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: AppColors.darkBlue,
        child: const ViewBody(),
      );
    }
  );
}