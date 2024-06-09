import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homerentalapp/Constants/color.dart';
import 'package:homerentalapp/Constants/dumy_data.dart';
import 'package:homerentalapp/Constants/fonts.dart';
import 'package:homerentalapp/Util/input_fields.dart';
import 'package:homerentalapp/Util/utils.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBG,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tejas Thonge",
                  style: AppFonts.h2LighBlack,
                ),
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    "lib/Assets/img/tejas dp.jpeg",
                  ),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Let’s find your best\nresidence ",
                  style: AppFonts.h1Black,
                )),
            AppInput.buildSerchBar(),
            const SizedBox(
              height: 10,
            ),
            buildRowTextCatagryHeadr(
                title: "Most popular", blueText: "See All"),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 310,
              child: ListView.builder(
                  itemCount: popularHouseList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return buildPopularHousCards(
                        context: context,
                        popularHouseList: popularHouseList,
                        index: index);
                  }),
            ),
            buildRowTextCatagryHeadr(
                title: "Nearby your location", blueText: "More"),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return buildNearbyHousCards();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
