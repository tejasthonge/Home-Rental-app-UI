


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppInput{ 

  static Widget buildSerchBar(){

    return Container( 
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                
                decoration: InputDecoration( 
                  prefixIcon: const Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: "Search your favourite paradise",
                  hintStyle: GoogleFonts.poppins( 
                    fontSize:13,
                    fontWeight:FontWeight.w600,
                  )
                ),
              ),
            );
  }
}