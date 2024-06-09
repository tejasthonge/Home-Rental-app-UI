

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homerentalapp/Constants/color.dart';
import 'package:homerentalapp/Constants/dumy_data.dart';
import 'package:homerentalapp/Constants/fonts.dart';
import 'package:homerentalapp/Util/appbar.dart';
import 'package:homerentalapp/Util/buttons.dart';
import 'package:homerentalapp/Util/utils.dart';
import 'package:homerentalapp/View/Screen/wellcome_screen.dart';
import 'package:svg_flutter/svg.dart';

class HouseDitail extends StatefulWidget {
  final int index;
  final List popularHouseList;
  const HouseDitail({
    required this.index,
    required this.popularHouseList,
    super.key});

  @override
  State<HouseDitail> createState() => _HouseDitailState();
}

class _HouseDitailState extends State<HouseDitail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBG,
      appBar: buildAppBar(title: "Details",context: context),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column( 
        
          children: [
            Stack(
              children: [
                Container( 
                        
                  height: 244,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), 
                    image: DecorationImage( 
                      fit: BoxFit.cover,
                      image: AssetImage(
                        popularHouseList[widget.index]["image"]
                      )
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: buildReating(popularHouseList: popularHouseList, index: widget.index),
                ),

               
              ],
            ),

             Container(
              margin: EdgeInsets.only(top: 20),
               child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                            popularHouseList[widget.index]['name'],
                            style: AppFonts.h1Black,
                      ),
                      Text(
                            popularHouseList[widget.index]['loction'],
                            style: AppFonts.h2LighBlack,
                      ),
                     ],
                   ),
                   Row(
                     children: [
                       Text(
                        popularHouseList[widget.index]["prise"],
                        style:AppFonts.h2Bule,
                       ),
                       Text(
                        " /mont",
                            style: AppFonts.h2LighBlack,
                      ),
                     ],
                   )
                 ],
               ),
             ),

             Container( 
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 140,
              child: Row( 
                children: [ 
                  Expanded(
                    flex: 3,
                    child: buildBadInfoCard(index: widget.index)
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    flex: 3,
                    child: buildBathInfoCard(index: widget.index)
                      
                    
                  ),
                  const SizedBox(width: 15,),
                  
                  Expanded(
                    flex: 3,
                    child:buildAreaInfoCard(index: widget.index)
                  )
                ],
              ),
             ),

             Flexible(
               child: SingleChildScrollView(
                 child: Container( 
                 
                  child: Text( 
                    popularHouseList[widget.index]["discription"].toString(),
                    style: AppFonts.h4Black,
                  ),
                 ),
               ),
             )
            
          ],
        ),
      ),




      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container( 
        color: Color.fromARGB(228, 255, 255, 255),
        width: double.infinity,
        height: 115,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 110),
        child: AppButton.blueBotton(title: "Rent Now", context: context, page: WellcomeScreen()),
      ),
    );
  }
}