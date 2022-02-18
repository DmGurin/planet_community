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
    return Container(
      padding: const EdgeInsets.all(15.0),
      height: 150,
      width: MediaQuery.of(context).size.width - 40,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.blue,
            AppColors.darkBlue,
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                widget.onTapLeftButton();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.minTemp,
                        style: AppTextStyle.textStyle14w700,
                      ),
                      Text(
                        widget.maxTemp,
                        style: AppTextStyle.textStyle14w700,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Center(child: Image.asset(AppImages.scale),),
                  ),
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
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 1,
            height: double.infinity,
            color: AppColors.greyy,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                widget.onTapRightButton();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.maxQuake,
                        style: AppTextStyle.textStyle14w700,
                      ),
                      Text(
                        widget.minQuake,
                        style: AppTextStyle.textStyle14w700,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Center(child: Image.asset(AppImages.diag),),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'EARTHQUAKE THIS WEEK',
                    style: AppTextStyle.textStyle14w700.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
//void marsDialog (BuildContext context,  Function onTap){}
}
