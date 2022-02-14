import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet_community/screens/earthquake_screen/earthquake_screen.dart';
import 'package:planet_community/screens/temperature_screen/temperature_screen.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/source/svg.dart';
import 'package:planet_community/source/widget/custom_dialog/custom_dialog.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class JupiterProfileScreen extends StatefulWidget {
  const JupiterProfileScreen({Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  _JupiterProfileScreenState createState() => _JupiterProfileScreenState();
}

class _JupiterProfileScreenState extends State<JupiterProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: AppBar(
            backgroundColor: AppColors.darkBlue,
            elevation: 0.0,
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.darkBlue,
              AppColors.darkGrey,
            ],
          )),
          child: Column(
            children: [
              const Text(
                'JUPITER',
                style: AppTextStyle.textStyle96w700,
              ),
              const Text(
                'THE GAS PLANET',
                style: AppTextStyle.textStyle14w700,
              ),
              Container(
                margin: const EdgeInsets.only(top: 23),
                height: 39,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.9, color: AppColors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                child: const Center(
                    child: Text(
                  '360 VIEW',
                  style: AppTextStyle.textStyle18w700,
                  textAlign: TextAlign.center,
                )),
              ),
              const Spacer(),
              Stack(
                children: [
                  Image.asset(
                    AppImages.bigjupiter,
                  ),
                  Positioned(
                    top: 205,
                    right: 35,
                    child: GestureDetector(
                      onTap: () {
                        customDialog(
                          context: context,
                          minTemp: '50\u00b0',
                          maxTemp: '100\u00b0',
                          minQuake: '2\u00b0',
                          maxQuake: '5\u00b0',
                          onTapLeftButton: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const TemperatureScreen(),
                            ),
                          ),
                          onTapRightButton: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const EarthQuakeScreen(),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 9),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                            color: AppColors.botBlue,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                        child: Center(
                          child: SvgPicture.asset(
                            AppSvg.plus,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 220,
                    left: 95,
                    child: GestureDetector(
                      onTap: () {
                        customDialog(
                          context: context,
                          minTemp: '50\u00b0',
                          maxTemp: '100\u00b0',
                          minQuake: '2\u00b0',
                          maxQuake: '5\u00b0',
                          onTapLeftButton: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const TemperatureScreen(),
                            ),
                          ),
                          onTapRightButton: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const EarthQuakeScreen(),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 9),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                            color: AppColors.botBlue,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                        child: Center(
                          child: SvgPicture.asset(
                            AppSvg.plus,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
