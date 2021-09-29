import 'package:flutter/material.dart';
import 'package:music_app/components/title.dart';
import 'package:music_app/screens/home/components/explore_buttom.dart';
import 'package:music_app/screens/home/components/my_play_list.dart';
import 'package:music_app/screens/home/components/popular_item.dart';
import 'package:music_app/screens/home/components/recently_player.dart';
import 'package:music_app/screens/home/components/your_wrap_up.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        child: Column(
          children: [
            TitleBar(
              title: 'MY PLAYLISTS',
            ),
            MyPlayList(),
            ExploreButton(),
            TitleBar(
              title: '2020 wrapped',
            ),
            YearWrapUp(),
            TitleBar(
              title: 'RECENTLY PLAYED',
            ),
            RecentlyPlayer(),
            TitleBar(
              title: 'POPULAR',
            ),
            PopularItem(),
          ],
        ),
      ),
    );
  }
}
