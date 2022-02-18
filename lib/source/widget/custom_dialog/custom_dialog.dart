import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_community/source/svg.dart';
import 'package:planet_community/source/widget/custom_dialog/custom_dialog_body.dart';

void customDialog({
  BuildContext? context,
  Function? onTapLeftButton,
  Function? onTapRightButton,
  String? minTemp,
  String? maxTemp,
  String? minQuake,
  String? maxQuake,
}) {
  showDialog(
      context: context!,
      barrierColor: Colors.transparent,
      barrierDismissible: true,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Dialog(
              backgroundColor: Colors.transparent,
              child: CustomDialogBody(
                onTapLeftButton: onTapLeftButton!,
                onTapRightButton: onTapRightButton!,
                minTemp: minTemp!,
                maxTemp: maxTemp!,
                minQuake: minQuake!,
                maxQuake: maxQuake!,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(AppSvg.cross),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      });
}
