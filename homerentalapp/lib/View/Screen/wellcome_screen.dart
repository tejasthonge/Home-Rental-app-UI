


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homerentalapp/Constants/color.dart';
import 'package:homerentalapp/Constants/fonts.dart';
import 'package:homerentalapp/Util/buttons.dart';
import 'package:homerentalapp/View/Screen/home_screen.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      body: Column( 

        children: [ 
          Flexible(
            child: Container( 
              width: double.infinity,
              height: 700,
              decoration:const BoxDecoration( 
            
                image: DecorationImage( 
                  fit: BoxFit.cover,
                  image: AssetImage( 
                    "lib/Assets/img/wellcomscreenBG.png"
                  )
                )
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Lets find your Paradise",
              style:AppFonts.h1Black
            ),
          ),
          
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              textAlign: TextAlign.center,
              "Find your perfect dream space\nwith just a few clicks",
              style:AppFonts.h2LighBlack
            ),
          ),


        AppButton.blueBotton(title: "Get Started", context: context,page: const HomeScreen()),
         const SizedBox(height: 30,)
          
        ],
      ),
    );
  }
}