import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_community/screens/mars_screen/mars_profile/mars_dialog_body.dart';
import 'package:planet_community/source/svg.dart';


void marsDialog (BuildContext context,  Function onTap){
  showDialog(context: context,
      barrierColor: Colors.transparent,
      barrierDismissible: true,
      builder: (context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children:  [
        Stack(
          children:  [
              Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Dialog(
                backgroundColor: Colors.transparent,
                child: MarsDialogBody( onTap:
                onTap,),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 170,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: SvgPicture.asset(AppSvg.cross),

                ),
              ),
            ),
          ],
        ),
      ],
    );
  });
}