import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_shop/screen/homePage/widgets/refer_earn.dart';
import 'package:mini_shop/screen/homePage/widgets/widgets.dart';

import '../../../core/conts.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox listViewForDiscount() {
  return SizedBox(
    height: 180,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Row(
          children: [
            listDiscounts(kColor: index % 2 == 0 ? kgreen : kblue),
            w10
          ],
        );
      },
      itemCount: 5,
    ),
  );
}

Container listDiscounts({required kColor}) {
  return Container(
    height: 180,
    width: 350,
    decoration: BoxDecoration(
      color: kColor,
      borderRadius: BorderRadius.circular(7),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DISCOUNT\n25% ALL\nFRUITS',
                style: GoogleFonts.afacad(
                    fontSize: 23, fontWeight: FontWeight.bold, color: kwhite),
              ),
              h10,
              checkNowButton()
            ],
          ),
        ),
        discountFruitImageBox()
      ],
    ),
  );
}

SizedBox listViewForCrazeDeal() {
  return SizedBox(
    height: 140,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Row(
          children: [crazeDealCard(), w10],
        );
      },
      itemCount: 5,
    ),
  );
}

Stack crazeDealCard() {
  return Stack(
    children: [
      Container(
        height: 140,
        width: 320,
        decoration: BoxDecoration(
            color: kblack, borderRadius: BorderRadius.circular(8)),
      ),
      Positioned(
        top: 10,
        right: 16,
        child: vegitableImageBox(),
      ),
      Positioned(
        top: 24,
        left: 26,
        child: crazeDealText(),
      ),
    ],
  );
}

Container listviewForNearbystores() {
  return Container(
    height: 130,
    width: double.infinity,
    decoration: BoxDecoration(
        //color: Colors.amber,
        borderRadius: BorderRadius.circular(8)),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 36, left: 2),
          child: breadimageBox(),
        ),
        w20,
        Column(
          children: [
            h5,

            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Freshly Baker',
                      style: GoogleFonts.quicksand(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sweets, North Indian',
                      style: GoogleFonts.quicksand(fontSize: 17),
                    ),
                    Text('Site No -1 | 6.4 kms',
                        style: GoogleFonts.quicksand(fontSize: 15)),
                    h5,
                    greenButton(),
                  ],
                ),
                w20,
                showRating()
              ],
            ),

            // Divider(
            //   color: kblack,
            // ),
            Row(
              children: [
                imageOfIcons(image: 'assets/percentage.png'),
                offerText(size: 13, title: 'Upto 10% OFF'),
                imageOfIcons(image: 'assets/vegIcon.png'),
                offerText(size: 13, title: '3400+ items available')
              ],
            )
          ],
        ),
      ],
    ),
  );
}
