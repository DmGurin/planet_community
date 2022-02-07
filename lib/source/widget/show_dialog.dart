import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:planet_community/screens/uranus_screen/screen.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

void showCustomDialog(BuildContext context, Function onTap) {
  showDialog(
      context: context,
      barrierColor: Colors.transparent,
      //прозрачный фон окна при всплывании диалогового окна
      barrierDismissible: true,
      //при нажатии в пустом месте экрана скрывает диалоговое окно
      builder: (context) {
        return ShowItemDialog(
          onTap:
              onTap, //при переходе с всплывающего окна showDialog на другие страницы/классы
        );
      });
}

class ShowItemDialog extends StatelessWidget {
  const ShowItemDialog({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.DialogTop.withOpacity(0.75),
                  AppColors.black.withOpacity(1),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 0.5,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    onTap();
                    //Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '2 \u00b0',
                              style: AppTextStyle.textStyle14w700,
                            ),
                            Text(
                              '13 \u00b0',
                              style: AppTextStyle.textStyle14w700,
                            ),
                          ],
                        ),
                        Image.asset(AppImages.scale),
                        Text(
                          'TEMPERATURE THIS WEEK',
                          style: AppTextStyle.textStyle14w700
                              .copyWith(color: Colors.grey),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: double.infinity,
                  color: AppColors.greyy,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UranusScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              '8.1 \u00b0',
                              style: AppTextStyle
                                  .textStyle14w700, //textAlign: TextAlign.center,
                            ),
                            Text(
                              '3.4 \u00b0',
                              style: AppTextStyle.textStyle14w700,
                            ),
                          ],
                        ),
                        Image.asset(AppImages.diog),
                        Text(
                          'EARTHQUAKE THIS WEEK',
                          style: AppTextStyle.textStyle14w700
                              .copyWith(color: Colors.grey),
                          //textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
