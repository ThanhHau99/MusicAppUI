import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants.dart';
import 'package:music_app/model/play_list.dart';
import 'package:music_app/screens/home/components/play_list_card.dart';

class MyPlayList extends StatelessWidget {
  const MyPlayList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: kDefaultPadding,
          ),
          child: Row(
            children: [
              ...List.generate(demoPlayList.length, (index) {
                return PlayListCard(
                  playListItem: demoPlayList[index],
                  index: index,
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
