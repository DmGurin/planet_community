import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class CustomDialogBody extends StatefulWidget {
  const CustomDialogBody({
    Key? key,
    required this.onTapRightButton,
    required this.onTapLeftButton,
    required this.minTemp,
    required this.maxTemp,
    required this.minQuake,
    required this.maxQuake,
  }) : super(key: key);
  final Function onTapRightButton;
  final Function onTapLeftButton;
  final String minTemp;
  final String maxTemp;
  final String minQuake;
  final String maxQuake;

  @override
  _CustomDialogBodyState createState() => _CustomDialogBodyState();
}

class _CustomDialogBodyState extends State<CustomDialogBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width + 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.DialogTop,
                AppColors.black,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.05,
                blurRadius: 0.5,
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    widget.onTapLeftButton();
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 100,
                              child: Text(
                                widget.minTemp,
                                style: AppTextStyle.textStyle14w700,
                              )),
                          Text(
                            widget.maxTemp,
                            style: AppTextStyle.textStyle14w700,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.network(AppImages.scale),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'TEMPERATURE THIS WEEK',
                        style: AppTextStyle.textStyle14w700
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: 1,
                  height: double.infinity,
                  color: AppColors.greyy,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    widget.onTapRightButton();
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 100,
                              child: Text(
                                widget.maxQuake,
                                style: AppTextStyle.textStyle14w700,
                              )),
                          Text(
                            widget.minQuake,
                            style: AppTextStyle.textStyle14w700,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width - 275,
                          child: Image.network(AppImages.diog)),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'EARTHQUAKE THIS WEEK',
                        style: AppTextStyle.textStyle14w700
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
//void marsDialog (BuildContext context,  Function onTap){}
}
