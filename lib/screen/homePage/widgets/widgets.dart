import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/conts.dart';

Text headingText({required title}) {
  return Text(
    title,
    style: GoogleFonts.quicksand(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey[800]),
  );
}

Row headingWithSeeAll(String text1) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      headingText(title: text1),
      Text(
        'See all',
        style: GoogleFonts.quicksand(
            fontSize: 18, fontWeight: FontWeight.bold, color: kgreen),
      )
    ],
  );
}

Container checkNowButton() {
  return Container(
    height: 30,
    width: 150,
    decoration:
        BoxDecoration(color: kOrange, borderRadius: BorderRadius.circular(5)),
    child: Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Text(
        'CHECK NOW',
        style: GoogleFonts.poppins(color: kwhite, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Column crazeDealText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Customer favourite \ntop supermarkets',
        style: GoogleFonts.quicksand(
            color: kwhite, fontWeight: FontWeight.bold, fontSize: 25),
      ),
      h10,
      Row(
        children: [
          Text(
            'Explore ',
            style: GoogleFonts.quicksand(
                color: kOrange, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.arrow_forward,
            color: kOrange,
          )
        ],
      ),
    ],
  );
}

Padding discountFruitImageBox() {
  return Padding(
    padding: const EdgeInsets.only(top: 30, left: 6),
    child: Container(
      height: 160,
      width: 160,
      decoration: const BoxDecoration(
        //color: kwhite,
        image: DecorationImage(
            image: AssetImage('assets/fruitsImg.png'), fit: BoxFit.cover),
      ),
    ),
  );
}

Container vegitableImageBox() {
  return Container(
    height: 130,
    width: 100,
    //color: Colors.amber,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/vegitable.png'), fit: BoxFit.cover)),
  );
}

Container breadimageBox() {
  return Container(
    height: 90,
    width: 80,
    decoration: BoxDecoration(
        color: kgreen,
        image: const DecorationImage(
            image: AssetImage('assets/bread.jpg'), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(8)),
  );
}

Text offerText({required double size, required String title}) {
  return Text(
    title,
    style: GoogleFonts.quicksand(fontSize: size, fontWeight: FontWeight.bold),
  );
}

Container imageOfIcons({required String image}) {
  return Container(
    height: 25,
    width: 20,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
      ),
    ),
  );
}
