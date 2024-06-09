import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homerentalapp/Constants/color.dart';
import 'package:homerentalapp/Constants/dumy_data.dart';
import 'package:homerentalapp/Constants/fonts.dart';
import 'package:homerentalapp/View/Screen/house_dautail_screen.dart';
import 'package:svg_flutter/svg.dart';

Widget buildReating({required List popularHouseList, required int index}) {
  return Container(
    // width: ,
    padding: EdgeInsets.symmetric(horizontal: 5),
    // margin: EdgeInsets.only(right: 20,left: 130,top: 20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: AppColor.blue),

    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Color.fromRGBO(251, 227, 12, 1)),
        Text(
          // "4.9",
          popularHouseList[index]['retting'],
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget buildPopularHousCards(
    {required BuildContext context,
    required List popularHouseList,
    required int index}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => HouseDitail(
                index: index,
                popularHouseList: popularHouseList,
              )));
    },
    child: Container(
      margin: EdgeInsets.only(right: 20),
      height: 310,
      width: 210,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 196,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(fit: BoxFit.cover, image: AssetImage(
                        // "lib/Assets/img/home1.png"
                        popularHouseList[index]["image"]))),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20, left: 130),
                  child: buildReating(
                      popularHouseList: popularHouseList, index: index)),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // textAlign: TextAlign.start
                  // "Night Hill Villa",
                  popularHouseList[index]["name"],
                  style: AppFonts.h3Black,
                ),
                Text(
                  // textAlign: TextAlign.start
                  // "London,Night Hill",
                  popularHouseList[index]["loction"],
                  // "",
                  style: AppFonts.h3LighBlack,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      // "5900 ",
                      popularHouseList[index]["prise"],
                      style: AppFonts.h2Bule,
                    ),
                    Text(
                      "/mont",
                      style: AppFonts.h2LighBlack,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildRowTextCatagryHeadr(
    {required String title, required String blueText}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: AppFonts.h1Black,
      ),
      Text(
        blueText,
        style: AppFonts.h2Bule,
      )
    ],
  );
}

Widget buildNearbyHousCards() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    height: 108,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(15)),
    child: Row(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("lib/Assets/img/house3.jpeg"))),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jumeriah Golf Estates Villa",
                style: AppFonts.h3Black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Icon(Icons.location_on),
                  SvgPicture.asset("lib/Assets/icon/map-pin.svg"),
                  Text(
                    " London,Area Plam Jumeriah",
                    style: AppFonts.h3LighBlack,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("lib/Assets/icon/bed.svg"),
                  Text(
                    " 4 Bedrooms",
                    style: AppFonts.h3LighBlack,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset("lib/Assets/icon/bath.svg"),
                  Text(
                    " 5 Bathrooms",
                    style: AppFonts.h3LighBlack,
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildBadInfoCard({
  required int index,
}) {
  return Container(
    // margin: EdgeInsets.only(left: 10),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 30,
          width: 30,
          child: SvgPicture.asset("lib/Assets/icon/bed.svg"),
        ),
        Text(
          "Bedrooms",
          style: AppFonts.h2LighBlack,
        ),
        Text(
          popularHouseList[index]["Bedrooms"].toString(),
          style: AppFonts.h3Black,
        )
      ],
    ),
  );
}

Widget buildBathInfoCard({
  required int index,
}) {
  return Container(
    // margin: EdgeInsets.only(left: 10),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 30,
          width: 30,
          child: SvgPicture.asset("lib/Assets/icon/bath.svg"),
        ),
        Text(
          "Bathrooms",
          style: AppFonts.h2LighBlack,
        ),
        Text(
          popularHouseList[index]["Bathrooms"].toString(),
          style: AppFonts.h3Black,
        )
      ],
    ),
  );
}

Widget buildAreaInfoCard({
  required int index,
}) {
  return Container(
    // margin: EdgeInsets.only(left: 10),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 30,
          width: 30,
          child: SvgPicture.asset("lib/Assets/icon/area.svg"),
        ),
        Text(
          "Square ft",
          style: AppFonts.h2LighBlack,
        ),
        Text(
          popularHouseList[index]["Square ft"].toString(),
          style: AppFonts.h3Black,
        )
      ],
    ),
  );
}
