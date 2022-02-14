import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_community/screens/earthquake_screen/earthquake_screen.dart';
import 'package:planet_community/source/widget/custom_dialog/custom_dialog.dart';
import 'package:planet_community/screens/temperature_screen/temperature_screen.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/source/svg.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class MarsProfileScreen extends StatefulWidget {
  const MarsProfileScreen({Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  _MarsProfileScreenState createState() => _MarsProfileScreenState();
}

class _MarsProfileScreenState extends State<MarsProfileScreen> {
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
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Mars',
                style: AppTextStyle.textStyle96w700,
              ),
              const Text(
                'THE RED PLANET',
                style: AppTextStyle.textStyle18w700,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Center(
                  child: Text(
                    '360 VIEW',
                    style: AppTextStyle.textStyle18w700,
                    textAlign: TextAlign.center,
                  ),
                ),
                width: 39,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.9, color: AppColors.white),
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                ),
              ),
              const Spacer(),
              Stack(
                //alignment: AlignmentDirectional.center,
                children: [
                  Image.asset(AppImages.bigmars),
                  Positioned(
                    top: 205,
                    right: 35,
                    child: GestureDetector(
                      onTap: () {
                        customDialog(
                          context: context,
                          minTemp: '2\u00b0',
                          maxTemp: '20\u00b0',
                          minQuake: '3\u00b0',
                          maxQuake: '4\u00b0',
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
                          minTemp: '2\u00b0',
                          maxTemp: '20\u00b0',
                          minQuake: '3\u00b0',
                          maxQuake: '4\u00b0',
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
