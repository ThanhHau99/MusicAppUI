import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/constants.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 200),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: BoxDecoration(
          color: kTabBarColor,
          borderRadius: BorderRadius.circular(80),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(40),
              blurRadius: 6,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabItem(
              name: "HOME",
              icon: "assets/icons/home.svg",
              tapEvent: () {},
              isActive: true,
              timeFactor: 1,
            ),
            TabItem(
              name: "SEARCH",
              icon: "assets/icons/search.svg",
              tapEvent: () {},
              isActive: false,
              timeFactor: 2,
            ),
            TabItem(
              name: "LIBRARY",
              icon: "assets/icons/library.svg",
              tapEvent: () {},
              isActive: false,
              timeFactor: 3,
            ),
            TabItem(
              name: "PROFILE",
              icon: "assets/icons/profile.svg",
              tapEvent: () {},
              isActive: false,
              timeFactor: 4,
            ),
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({
    Key key,
    @required this.icon,
    @required this.name,
    @required this.tapEvent,
    @required this.isActive,
    @required this.timeFactor,
  }) : super(key: key);

  final String icon, name;
  final GestureTapCallback tapEvent;
  final bool isActive;
  final int timeFactor;

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 400 * timeFactor),
      slidingBeginOffset: Offset(-1, 0),
      child: InkWell(
        onTap: tapEvent,
        child: Container(
          padding: EdgeInsets.all(5),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isActive ? kPrimaryColor : Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                color: kTextColor,
                height: 18,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                name,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
