import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants.dart';
import 'package:music_app/model/recently_play.dart';
import 'package:music_app/screens/home/components/recently_play_card.dart';

class RecentlyPlayer extends StatelessWidget {
  const RecentlyPlayer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      child: Row(
        children: [
          ...List.generate(
            demoRecentlyPlayed.length,
            (index) {
              return RecentlyPlayCard(
                recentlyPlay: demoRecentlyPlayed[index],
                index: index,
              );
            },
          ),
        ],
      ),
    );
  }
}
