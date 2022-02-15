import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/screens/planet_screen/screen.dart';
import 'package:planet_community/source/constants.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({
    Key? key,
  }) : super(key: key);

  @override
  _CarouselScreenState createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
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
              height: 80,
            ),
            const Text(
              'SOLAR SYSTEM',
              style: AppTextStyle.textStyle69w700,
            ),
            const Spacer(),
            const Divider(
              endIndent: 10,
              indent: 10,
              height: 40,
              thickness: 0.8,
              color: AppColors.grey,
            ),
            const Spacer(),
            Text(
              'JOIN THE JOURNEY',
              style: AppTextStyle.textStyle24w700.copyWith(color: Colors.white),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                viewportFraction: 0.5,
                autoPlay: true,
                aspectRatio: 1.0,
                enlargeCenterPage: true,
              ),
              itemCount: planetList.length,
              itemBuilder: (ctx, int index, _) {
                int oldIndex = index;
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanetScreen(
                          planet: planetList[index],
                        ),
                      ),
                    );
                    Navigator.of(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: oldIndex == index ? 1 : 0.5,
                          child: Image.asset(
                            planetList[index].image,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * 0.7,
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          child: Text(
                            planetList[index].name,
                            style: AppTextStyle.textStyle24w700
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const Spacer(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
