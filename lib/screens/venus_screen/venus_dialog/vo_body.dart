import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_text_styles.dart';

class VoBody extends StatefulWidget {
  const VoBody({Key? key}) : super(key: key);

  @override
  _VoBodyState createState() => _VoBodyState();
}

class _VoBodyState extends State<VoBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'data',
            style: AppTextStyle.textStyle69w700,
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.temperature,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 18.5,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    radius: 11.0,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'CLICK HERE',
            style: AppTextStyle.textStyle26w700,
          ),
        ],
      ),
    );
  }
}
