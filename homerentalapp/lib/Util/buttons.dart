

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homerentalapp/Constants/color.dart';

class AppButton{

  static Widget blueBotton({required String title,required BuildContext context ,required Widget page}){

    return  GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>page)
        );
      },
      child: Container( 
              padding:const EdgeInsets.symmetric(vertical: 13,horizontal: 50),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration( 
      
                color:AppColor.blue,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Text( 
      
                title,
                style: GoogleFonts.poppins( 
                  color:Colors.white,
                  fontSize:22,
                  fontWeight:FontWeight.w400
                ),
                
              ),
            ),
    );
  }
}