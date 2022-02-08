import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/v_dialog.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/ve_dialog.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/ven_dialog.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/venus_dialog.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/vo_dialog.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/source/svg.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class VenusProfileScreen extends StatefulWidget {
  const VenusProfileScreen({Key? key}) : super(key: key);

  @override
  _VenusProfileScreenState createState() => _VenusProfileScreenState();
}

class _VenusProfileScreenState extends State<VenusProfileScreen> {
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
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            const Text(
              'VENUS',
              style: AppTextStyle.textStyle96w700,
            ),
            const Text(
              'GOLWING PLANET',
              style: AppTextStyle.textStyle14w700,
            ),
            Container(
              margin: const EdgeInsets.only(top: 23),
              height: 39,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                border: Border.all(
                  width: 0.9,
                  color: AppColors.white,
                ),
              ),
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
                  AppImages.bigvenus,
                ),
                Positioned(
                  top: 70,
                  right: 70,
                  child: GestureDetector(
                    onTap: (){
                      voDialog(context);
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
                  bottom: 70,
                  left: 110,
                  child: GestureDetector(
                    onTap: (){
                      vDialog(context);
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
                  right: 50,
                  bottom: 120,
                  child: GestureDetector(
                    onTap: (){
                      veDialog(context);
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
                  top: 110,
                  left: 160,
                  child: GestureDetector(
                    onTap: (){
                      venDialog(context);
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
                  left: 100,
                  child: GestureDetector(
                    onTap: (){
                      venusDialog(context);
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
