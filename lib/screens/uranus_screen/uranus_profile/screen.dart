import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_community/screens/uranus_screen/uranus_dialog/u_dialog.dart';
import 'package:planet_community/screens/uranus_screen/uranus_dialog/ur_dialog.dart';
import 'package:planet_community/screens/uranus_screen/uranus_dialog/ura_dialog.dart';
import 'package:planet_community/screens/uranus_screen/uranus_dialog/uran_dialog.dart';
import 'package:planet_community/screens/uranus_screen/uranus_dialog/uranus_dialog.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/source/svg.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class UranusProfileScreen extends StatefulWidget {
  const UranusProfileScreen({Key? key}) : super(key: key);

  @override
  _UranusProfileScreenState createState() => _UranusProfileScreenState();
}

class _UranusProfileScreenState extends State<UranusProfileScreen> {
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
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Text(
              'URANUS',
              style: AppTextStyle.textStyle96w700,
            ),
            const Text(
              'THE COOLED PLANET',
              style: AppTextStyle.textStyle14w700,
            ),
            Container(
              margin: const EdgeInsets.only(top: 23),
              height: 39,
              width: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.9,
                    color: AppColors.white,
                  ),
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
                  AppImages.biguranus,
                ),
                Positioned(
                  right: 75,
                  top: 160,
                  child: GestureDetector(
                    onTap: (){
                      uDialog(context);
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
                  left: 150,
                  bottom: 400,
                  child: GestureDetector(
                    onTap: (){
                      uranDialog(context);
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
                  left: 150,
                  bottom: 70,
                  child: GestureDetector(
                    onTap: (){
                      urDialog(context);
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
                  bottom: 150,
                  right: 70,
                  child: GestureDetector(
                    onTap: (){
                      uraDialog(context);
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
                  top: 200,
                  left: 50,
                  child: GestureDetector(
                    onTap: (){
                      uranusDialog(context);
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
    );
  }
}
