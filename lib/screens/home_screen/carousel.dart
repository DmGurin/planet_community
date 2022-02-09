import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/screens/venus_screen/screen.dart';
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
  final List<Widget> imageSliders = planetList
      .map(
        (item) => GestureDetector(
          onTap: (){
             item.route;
          },
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(item.image, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  child: Text(
                    item.name,
                    style: AppTextStyle.textStyle24w700
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
      .toList();

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
              height: 40,
            ),
            const Text(
              'SOLAR SYSTEM',
              style: AppTextStyle.textStyle69w700,
            ),
            const Divider(
              endIndent: 10,
              indent: 10,
              height: 40,
              thickness: 0.8,
              color: AppColors.grey,
            ),
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
              itemCount: imageSliders.length,
              itemBuilder: (ctx, int index, _) {
                int oldIndex = index;
                return Container(
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
                );
              },

              // imageSliders,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const VenusScreen()));
              },
              child: Container(
                height: 47,
                width: 131,
                child: const Center(
                  child: (Text(
                    'START TOUR',
                    style: AppTextStyle.textStyle16w700,
                  )),
                ),
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 1),
                      )
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.lightBlue,
                        AppColors.darkBlue,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
