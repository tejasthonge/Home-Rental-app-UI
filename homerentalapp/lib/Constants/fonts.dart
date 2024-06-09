

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homerentalapp/Constants/color.dart';


class AppFonts{ 

  static TextStyle get h1Black {
    return GoogleFonts.poppins( 

              fontSize:22,
              fontWeight:FontWeight.w600,

            );
  }
  static TextStyle get h3Black {
    return GoogleFonts.poppins( 

              fontSize:16,
              fontWeight:FontWeight.w600,

            );
  }
  static TextStyle get h4Black {
    return GoogleFonts.poppins( 

              fontSize:15,
              fontWeight:FontWeight.w400,

            );
  }

  static TextStyle get h2LighBlack{
    return GoogleFonts.poppins( 

              fontSize:15,
              fontWeight:FontWeight.w500,
              color:AppColor.lightBlack

            );
  }
  static TextStyle get h3LighBlack{
    return GoogleFonts.poppins( 

              fontSize:12,
              fontWeight:FontWeight.w500,
              color:AppColor.lightBlack

            );
  }

  static TextStyle get h2Bule{
    return GoogleFonts.poppins(

              fontSize:16,
              fontWeight:FontWeight.w500,
              color:AppColor.blue
    );
  }
}