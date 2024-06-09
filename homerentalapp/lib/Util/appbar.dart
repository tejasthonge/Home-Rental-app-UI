

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homerentalapp/Constants/fonts.dart';
import 'package:svg_flutter/svg.dart';

AppBar buildAppBar(
  {required String title,
  
  required BuildContext context}
){
  return AppBar( 
    backgroundColor: Colors.transparent,
    // leadingWidth: 60,
    leading: GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Padding(

        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(

          "lib/Assets/icon/arrow-back.svg"
        ),
      ),
    ),
    title: Text( 
      title,
      style: AppFonts.h1Black,
    ),
  );
}