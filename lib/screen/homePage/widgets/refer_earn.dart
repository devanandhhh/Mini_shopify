import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/conts.dart';

Container referEarn() {
  return Container(
    height: 90,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.green[400], borderRadius: BorderRadius.circular(8)),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Column(
            children: [
              Text(
                'Refer & Earn',
                style: GoogleFonts.quicksand(
                    fontSize: 26, fontWeight: FontWeight.bold, color: kwhite),
              ),
              Row(
                children: [
                  Text(
                    'Invite your friends & earn 15% off \t',
                    style: GoogleFonts.aBeeZee(color: kwhite),
                  ),
                  Icon(
                    Icons.arrow_circle_right_rounded,
                    color: kwhite,
                  )
                ],
              )
            ],
          ),
        ),
        w10,
        Container(
          height: 80,
          width: 80,
          //color: kwhite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/giftBox.png'),
            ),
          ),
        )
      ],
    ),
  );
}

Container greenButton() {
  return Container(
    height: 15,
    width: 60,
    decoration: BoxDecoration(
        color: Colors.grey[400], borderRadius: BorderRadius.circular(3)),
    child: const Padding(
      padding: EdgeInsets.only(left: 6),
      child: Text(
        'Top Score',
        style: TextStyle(fontSize: 11),
      ),
    ),
  );
}

SizedBox showRating() {
  return SizedBox(
    height: 70,
    width: 70,
    child: Column(
      children: [
        Column(
          children: [
            h10,
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.grey[700],
                ),
                Text(
                  '\t4.1',
                  style: TextStyle(color: Colors.grey[700], fontSize: 20),
                )
              ],
            ),
            Text(
              '45 mins',
              style: GoogleFonts.quicksand(
                  fontSize: 20, fontWeight: FontWeight.bold, color: kOrange),
            )
          ],
        )
      ],
    ),
  );
}
