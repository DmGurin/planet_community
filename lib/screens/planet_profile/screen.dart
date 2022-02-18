import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_community/data/model/planet_model.dart';
import 'package:planet_community/screens/earthquake_screen/earthquake_screen.dart';
import 'package:planet_community/screens/planet_web_view.dart';
import 'package:planet_community/screens/temperature_screen/temperature_screen.dart';
import 'package:planet_community/source/svg.dart';
import 'package:planet_community/source/widget/custom_dialog/custom_dialog.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class ProfilePlanetScreen extends StatelessWidget {
  const ProfilePlanetScreen({
    Key? key,
    required this.planet,
  }) : super(key: key);

  final PlanetModel planet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 70,
              ),
              Text(
                planet.name,
                style: AppTextStyle.textStyle96w700,
              ),
              Text(
                planet.typePlanet,
                style: AppTextStyle.textStyle18w700,
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlanetWebView(),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.9, color: AppColors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  child: const Center(
                    child: Text(
                      '360\nVIEW',
                      style: AppTextStyle.textStyle18w700,
                      textAlign: TextAlign.center,
                    ),
                  ),

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: planet.largeImage,
                    placeholder: (context, url) =>
                        const Center(child:  CircularProgressIndicator()),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    fit: BoxFit.fitHeight,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,

                  ),
                  Positioned(
                    top: 205,
                    right: 35,
                    child: GestureDetector(
                      onTap: () {
                        customDialog(
                          context: context,
                          minTemp: '${planet.minTemp}\u00b0',
                          maxTemp: '${planet.maxTemp}\u00b0',
                          minQuake: '${planet.minQuake}\u00b0',
                          maxQuake: '${planet.maxQuake}\u00b0',
                          onTapLeftButton: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TemperatureScreen( planet: planet),
                            ),
                          ),
                          onTapRightButton: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  EarthQuakeScreen(planet: planet,),
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
                            color: AppColors.blue,
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
                          minTemp: '${planet.minTemp}\u00b0',
                          maxTemp: '${planet.maxTemp}\u00b0',
                          minQuake: '${planet.minQuake}\u00b0',
                          maxQuake: '${planet.maxQuake}\u00b0',
                          onTapLeftButton: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  TemperatureScreen( planet: planet,),
                            ),
                          ),
                          onTapRightButton: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  EarthQuakeScreen(planet: planet),
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
                            color: AppColors.blue,
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
            ],
          ),
        ),
      ),
    );
  }
}
