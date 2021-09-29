import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/components/app_bar.dart';
import 'package:music_app/components/tab_bar.dart';
import 'package:music_app/constants.dart';
import 'package:music_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'GOOD MORNING, CODE CRAFTS!',
      ),
      body: Body(),
      bottomNavigationBar: CustomTabBar(),
    );
  }
}
