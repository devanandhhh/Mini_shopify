import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_shop/core/conts.dart';

import '../../bloc/notification_bloc.dart';
import 'package:mini_shop/model/model.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<NotificationBloc>().add(FetchAllNotificationEvent());
    return Scaffold(
      appBar: notificationAppBar(context),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is NotificationLoadingState) {
            return centerCircleloadingIndicator();
          } else if (state is NotificationLoadedState) {
            return listOfNotifications(state);
          } else {
            return const Text(
                'Backend facing a issue Please try after some time');
          }
        },
      ),
    );
  }

  ListView listOfNotifications(NotificationLoadedState state) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final getData = state.data[index];
          return containerBox(index, getData);
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: state.data.length);
  }

  SizedBox containerBox(int index, NotificationModel getData) {
    return SizedBox(
      height: 110,
      width: double.infinity,
      // color: kOrange,
      child: Row(
        children: [
          imageBox(index),
          w10,
          titleAndSubtitles(getData),
        ],
      ),
    );
  }

  Expanded titleAndSubtitles(NotificationModel getData) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // h10,
          Text(
            getData.title,
            softWrap: true,
            style: quicksandTextStyle(fontSize: 20),
          ),
          Text(
            getData.body,
            softWrap: true,
            style:
                quicksandTextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  Padding imageBox(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, bottom: 52),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(index % 2 == 0
                    ? 'assets/checkingIssue.png'
                    : 'assets/packedImg.png'))),
      ),
    );
  }

  Center centerCircleloadingIndicator() {
    return Center(
      child: CircularProgressIndicator(
        color: kgreen,
      ),
    );
  }

  AppBar notificationAppBar(BuildContext context) {
    return AppBar(
      leading: Row(
        children: [
          w20,
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_circle_left_rounded,
              color: kgreen,
              size: 35,
            ),
          ),
        ],
      ),
      title: Text(
        'Notifications',
        style: GoogleFonts.quicksand(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}

TextStyle quicksandTextStyle(
    {required double fontSize, FontWeight fontWeight = FontWeight.bold}) {
  return GoogleFonts.quicksand(
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}
