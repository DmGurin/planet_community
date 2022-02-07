import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class SunScreen extends StatefulWidget {
  const SunScreen({Key? key}) : super(key: key);

  @override
  _SunScreenState createState() => _SunScreenState();
}

class _SunScreenState extends State<SunScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.darkBlue,
              AppColors.darkGrey,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 39,
            right: 39,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 16.8,
              ),
              const Text(
                'data',
                style: AppTextStyle.textStyle16w700,
              ),
              const SizedBox(
                height: 53.01,
              ),
              const Text(
                'data',
                style: AppTextStyle.textStyle69w700,
              ),
              const Text(
                'data',
                style: AppTextStyle.textStyle14w700,
              ),
              const Spacer(),
              Image.asset(AppImages.sun),
              const Spacer(
                flex: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'data',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'data',
                        style: AppTextStyle.textStyle18w700,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'data',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'data',
                        style: AppTextStyle.textStyle18w700,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'data',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'data',
                        style: AppTextStyle.textStyle18w700,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'data',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'data',
                        style: AppTextStyle.textStyle18w700,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: 47,
                width: 131,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.lightBlue,
                      AppColors.darkBlue,
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 3,
                      offset: Offset(0, 1),
                      color: AppColors.white,
                    ),
                  ],
                ),
                child: const Center(
                  child: (Text(
                    'data',
                    style: AppTextStyle.textStyle18w700,
                  )),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
