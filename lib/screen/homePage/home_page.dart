import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_shop/core/conts.dart';
import 'package:mini_shop/screen/homePage/widgets/trending_items.dart';

import 'widgets/category_widgets.dart';
import 'widgets/header_widgets.dart';
import 'widgets/listview_items.dart';
import 'widgets/refer_earn.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h20, h10,
              // header -- location----------------
              headerLocation(),
              // search bar --section-----------
              h20,
              headerSearchbar(context),
              // text session - ----------------
              h20,
              // category session ----------------
              categorySection(),
              h10,
              // top Discount part
              headingText(title: 'Top picks for you'),
              h10,
              // listed Discount items-----------
              listViewForDiscount(),
              h20,
              // trending part-------------------
              trendingSection(),
              //Craze deal ---------------------
              headingText(title: 'Craze deals'),
              h10,
              listViewForCrazeDeal(),
              h20,
              //refer & earn-------------------
              referEarn(),
              h20,
              //nearby stores part -----------
              headingWithSeeAll('Nearby stores'),
              h10,
              //list view of nearby stores---------
              listviewForNearbystores(),
              listviewForNearbystores(),
              h20, h10,
              bottomButton(),
              h20
            ],
          ),
        ),
      ),
    );
  }
}

Padding bottomButton() {
  return Padding(
    padding: const EdgeInsets.only(left: 70, right: 60),
    child: Container(
      height: 45,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.green[400], borderRadius: BorderRadius.circular(9)),
      child: Padding(
        padding: const EdgeInsets.only(top: 9),
        child: Text(
          'View all Stores',
          style: GoogleFonts.quicksand(
              fontSize: 21, fontWeight: FontWeight.bold, color: kwhite),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
