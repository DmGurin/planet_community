import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/source/constants.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

import 'earth_profile/screen.dart';

class EarthScreen extends StatefulWidget {
  const EarthScreen({Key? key}) : super(key: key);

  @override
  _EarthScreenState createState() => _EarthScreenState();
}

class _EarthScreenState extends State<EarthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'PLANETA',
            style: AppTextStyle.textStyle16w700,
          ),
          backgroundColor: AppColors.darkBlue,
          elevation: 0.0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.darkBlue, AppColors.darkGrey],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 39.0,
              right: 39.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  'EARTH',
                  style: AppTextStyle.textStyle69w700,
                ),
                const Text(
                  'THE LIVING PLANET',
                  style: AppTextStyle.textStyle14w700,
                ),
                const Spacer(),
                Image.asset(AppImages.earth),
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
                          '6378.1 KM',
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
                          'MOON',
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
                          '147.12 MILLION KM',
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
                          '361 DAYS',
                          style: AppTextStyle.textStyle18w700,
                        ),
                      ],
                    )
                  ],
                ),
               const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>  EarthProfileScreen(index: planetList.length)));
                  },
                  child: Container(
                    child: const Center(
                      child: Text(
                        'START TOUR',
                        style: AppTextStyle.textStyle18w700,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    width: 131,
                    height: 47,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.lightBlue,
                          AppColors.darkBlue,
                        ],
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
