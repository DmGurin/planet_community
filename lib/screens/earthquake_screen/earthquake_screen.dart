import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class EarthQuakeScreen extends StatefulWidget {
  const EarthQuakeScreen({Key? key}) : super(key: key);

  @override
  _EarthQuakeScreenState createState() => _EarthQuakeScreenState();
}

class _EarthQuakeScreenState extends State<EarthQuakeScreen> {

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 150,
                        width: 150,
                        decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.DialogTop.withOpacity(0.75),
                              AppColors.black.withOpacity(1),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 0.5,
                              offset: const Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Image.asset(
                          AppImages.quake,
                          color: AppColors.lightBlue,
                        )),
                    Column(
                      children: [
                        const Text('EARTHQUAKE THIS WEEK',
                            style: AppTextStyle.textStyle26w700),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox.fromSize(
                          size: const Size(40, 40),
                          child: ClipOval(
                            child: Material(
                              elevation: 2,
                              color: AppColors.lightBlue,
                              child: InkWell(
                                  splashColor: Colors.red, // splash color
                                onTap: (){
                                  setState(() {
                                    _makePhoneCall('tel:112');
                                  });
                                },
                                  child: const Icon(Icons.call)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Contact with us', style: AppTextStyle.textStyle18w700,)
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Divider(
                  color: AppColors.grey,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Scientists are working to pinpoint the source and which direction the seismic waves traveled, but they know the shaking occurred too far to have originated where InSight has detected almost all of its previous large quakes: Cerberus Fossae, a region roughly 1,000 miles (1,609 kilometers) away where lava may have flowed within the last few million years. One especially intriguing possibility is Valles Marineris, the epically long canyon system that scars the Martian equator. The approximate center of that canyon system is 6,027 miles (9,700 kilometers) from InSight.',
                  style: AppTextStyle.textStyle26w700, textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Divider(
                  color: AppColors.grey,
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(AppImages.smalmars),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
