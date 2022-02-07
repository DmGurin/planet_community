import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_community/screens/uranus_screen/screen.dart';
import 'package:planet_community/screens/venus_screen/screen.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/source/svg.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class MarsProfileScreen extends StatefulWidget {
  const MarsProfileScreen({Key? key}) : super(key: key);

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
                    left: 198,
                    top: 380,
                    bottom: 0,
                    right: 40,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const UranusScreen()));
                      },
                      child: Container(
                          padding: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppColors.DialogTop.withOpacity(0.75),
                                  AppColors.black.withOpacity(1),
                                ],
                              ),
                              //border: const Border(),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 0.5,
                                  offset: const Offset(
                                      -2, 0), // changes position of shadow
                                ),
                              ],
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      '8.1 \u00b0',
                                      style: AppTextStyle.textStyle14w700,
                                    ),
                                    Text(
                                      '3.4 \u00b0',
                                      style: AppTextStyle.textStyle14w700,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.asset(AppImages.diog),
                                const SizedBox(
                                  height: 16.5,
                                ),
                                Text(
                                  'EARTHQUAKE THIS WEEK',
                                  style: AppTextStyle.textStyle14w700
                                      .copyWith(color: Colors.grey),textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 380,
                    bottom: 0,
                    right: 198,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const VenusScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, left: 10,),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                AppColors.DialogTop.withOpacity(0.75),
                                AppColors.black.withOpacity(1),
                              ],
                            ),
                            //border: const Border(
                              //right:
                                //  BorderSide(width: 5.0, color: Colors.black),
                            //),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 0.5,
                                offset: const Offset(
                                    2, 0), // changes position of shadow
                              ),
                            ],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30))),
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: //Column(
                            //children: [
                            //  Container(
                             //   height: 10,
                             //   width: 10,
                             //   color: AppColors.white,
                            //  ),
                           // ],
                         // ),
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
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
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(AppImages.scale),
                              const SizedBox(
                                height: 15.8,
                              ),
                              Text(
                                'TEMPERATURE THIS WEEK',
                                style: AppTextStyle.textStyle14w700
                                    .copyWith(color: Colors.grey), textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 205,
                    right: 35,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const VenusScreen()));
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const VenusScreen()));
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
