import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_shop/screen/notificationPage/notification_page.dart';
import 'package:mini_shop/service/api_service.dart';

import '../../../core/conts.dart';

Row headerLocation() {
  return Row(
    children: [
      const Icon(
        Icons.location_on_rounded,
        color: Colors.green,
        size: 26,
      ),
      Text(
        'ABCD, New Delhi',
        style: GoogleFonts.lato(
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      const Icon(
        Icons.keyboard_arrow_down_outlined,
        color: Colors.green,
        size: 40,
      )
    ],
  );
}

Row headerSearchbar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 40,
        width: MediaQuery.sizeOf(context).width * .67,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(4)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 2),
              child: Text(
                'Search For Products/stores ',
                style: GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 19),
              ),
            ),
            Icon(
              Icons.search,
              color: kgreen,
            ),
            w10,
          ],
        ),
      ),
      w10,
      InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NotificationPage()));
        },
        child: Icon(
          Icons.notification_add_outlined,
          color: Colors.red[600],
          size: 25,
        ),
      ),
      w10,
      InkWell(
        onTap: (){
          ApiService().getNotification();
        },
        child: Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/tagIcon.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      )
    ],
  );
}
