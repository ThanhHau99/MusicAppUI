import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants.dart';
import 'package:music_app/model/recently_play.dart';

class RecentlyPlayCard extends StatelessWidget {
  const RecentlyPlayCard({
    Key key,
    @required this.recentlyPlay,
    @required this.index,
  }) : super(key: key);

  final RecentlyPlay recentlyPlay;
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DelayedDisplay(
      delay: Duration(milliseconds: 100 * index + 1),
      fadingDuration: Duration(milliseconds: 600 * index + 1),
      child: Padding(
        padding: EdgeInsets.only(right: kDefaultPadding),
        child: SizedBox(
          width: size.width * 0.35,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                    child: Image.asset(
                      recentlyPlay.image,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                          colors: [
                            index % 2 == 1
                                ? kRecentPlayOverlayColor1.withOpacity(.2)
                                : kRecentPlayOverlayColor2.withOpacity(.2),
                            Colors.white.withOpacity(.2),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                recentlyPlay.title,
                style: TextStyle(
                  fontSize: 12,
                  color: kTextColor,
                  letterSpacing: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
