import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/data/model/planet_model.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class EarthQuakeScreen extends StatelessWidget {
  const EarthQuakeScreen({
    Key? key,
    required this.planet,
  }) : super(key: key);

  final PlanetModel planet;

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: AppColors.blue,
          elevation: 0.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.blue,
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
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.darkBlue.withOpacity(0.75),
                              AppColors.black.withOpacity(1),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 0.5,
                              offset: const Offset(
                                  0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Image.asset(
                          AppImages.quake,
                          color: AppColors.turquoise,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
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
                                color: AppColors.turquoise,
                                child: InkWell(
                                    splashColor: Colors.red, // splash color
                                    onTap: () {
                                      _makePhoneCall('tel:123654478');
                                    },
                                    child: const Icon(Icons.call)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Contact with us',
                            style: AppTextStyle.textStyle18w700,
                          )
                        ],
                      ),
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
                  style: AppTextStyle.textStyle26w700,
                  textAlign: TextAlign.start,
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
                CachedNetworkImage(
                  imageUrl: planet.image,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
