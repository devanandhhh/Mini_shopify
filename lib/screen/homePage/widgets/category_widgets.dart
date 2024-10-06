import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_shop/screen/homePage/widgets/widgets.dart';

import '../../../core/conts.dart';

Column categorySection() {
  return Column(
    children: [
      headingText(title: 'What would you like to do today?'),
      h20,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          categoryCards(
              image: 'assets/burgerIcon.png',
              isOffer: true,
              title: 'Food Delivary'),
          categoryCards(
              image: 'assets/medicine.png', isOffer: true, title: 'Medicines'),
          categoryCards(
              image: 'assets/petIcon.png',
              isOffer: true,
              title: 'Pet Supplies'),
          categoryCards(
              image: 'assets/giftIcon.png', isOffer: false, title: 'Gifts')
        ],
      ),
      h20,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          categoryCards(
              image: 'assets/meatIcon.png', isOffer: false, title: 'Meat'),
          categoryCards(
              image: 'assets/cosmetic.png', isOffer: false, title: 'Cosmetic'),
          categoryCards(
              image: 'assets/stationary.png',
              isOffer: false,
              title: 'Stationery'),
          categoryCards(
              image: 'assets/storeIcon.png', isOffer: true, title: 'Gifts')
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 145, right: 145),
        child: Row(
          children: [
            Text(
              'More',
              style: GoogleFonts.lato(
                  color: kgreen, fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: kgreen,
            )
          ],
        ),
      )
    ],
  );
}

Column categoryCards({required image, required bool isOffer, required title}) {
  return Column(
    children: [
      Stack(children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  blurStyle: BlurStyle.outer,
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5)
            ],
          ),
          child: Container(
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
        ),
        isOffer
            ? Positioned(
                top: 0,
                left: 15,
                right: 2,
                child: Container(
                  height: 13,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[400],
                      borderRadius: BorderRadius.circular(3)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3, top: 1),
                    child: Text(
                      '10% Off',
                      style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white70),
                    ),
                  ),
                ))
            : w10
      ]),
      SizedBox(
        height: 60,
        width: 82,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
        ),
      ),
    ],
  );
}
