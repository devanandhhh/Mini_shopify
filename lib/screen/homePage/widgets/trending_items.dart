import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_shop/screen/homePage/widgets/widgets.dart';

import '../../../core/conts.dart';

Column trendingSection() {
  return Column(
    children: [
      headingWithSeeAll(
        'Trending',
      ),
      h10,
      SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [trendingItems(), trendingItems()],
            );
          },
          itemCount: 4,
          shrinkWrap: true,
        ),
      ),
      h20
    ],
  );
}

SizedBox trendingItems() {
  return SizedBox(
    height: 90,
    width: 260,
    //  color: kgreen,
    child: Row(
      children: [
        Container(
          height: 89,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: const DecorationImage(
                image: AssetImage('assets/iceCreamImg.jpg'), fit: BoxFit.cover),
          ),
        ),
        w10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            trendingText(title: 'Mindas Bhandar',size: 19),
            Text(
              'Sweets, North Indian',
              style: GoogleFonts.aBeeZee(fontSize: 15),
            ),
            Text(
              '(store location) | 6.4 kms',
              style: GoogleFonts.aBeeZee(fontSize: 14),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 14,
                  color: Colors.grey[800],
                ),
                Text(
                  '\t4.1  |  45 mins',
                  style: GoogleFonts.abel(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 14),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Text trendingText({required title,required double size}) {
  return Text(
            title,
            style: GoogleFonts.quicksand(
                fontSize: size, fontWeight: FontWeight.bold),
          );
}
