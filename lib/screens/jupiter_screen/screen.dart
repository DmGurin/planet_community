import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class JupiterScreen extends StatefulWidget {
  const JupiterScreen({Key? key}) : super(key: key);

  @override
  _JupiterScreenState createState() => _JupiterScreenState();
}

class _JupiterScreenState extends State<JupiterScreen> {
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
          padding: const EdgeInsets.only(left: 39, right: 39),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 16.8,
              ),
              const Text(
                'PLANETA',
                style: AppTextStyle.textStyle16w700,
              ),
              const SizedBox(
                height: 53.01,
              ),
              const Text(
                'JUPITER',
                style: AppTextStyle.textStyle69w700,
              ),
              const Text(
                'THE GAS PLANET',
                style: AppTextStyle.textStyle14w700,
              ),
              const Spacer(),
              Image.asset(AppImages.jupiter),
              const Spacer(flex: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'REDUS',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '69,911 KM',
                        style: AppTextStyle.textStyle18w700,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'MOONS',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '79 MOONS',
                        style: AppTextStyle.textStyle18w700,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'DISTANCE FROM SUN',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '746.89 MILLION KM',
                        style: AppTextStyle.textStyle18w700,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'ORBITAL PERIOD',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '12 YEARS',
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
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset (0,1),
                    ),
                  ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.lightBlue,
                        AppColors.darkBlue,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Center(
                  child: Text('START TOUR', style: AppTextStyle.textStyle18w700,),
                ),
              ),
              const SizedBox(
                height: 17,
              )
            ],
          ),
        ),
      ),
    );
  }
}
