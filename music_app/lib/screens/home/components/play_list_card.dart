import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants.dart';
import 'package:music_app/model/play_list.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    Key key,
    @required this.playListItem,
    @required this.index,
  }) : super(key: key);
  final PlayList playListItem;
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
          width: size.width * 0.4,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.black.withAlpha(40),
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    playListItem.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        kPrimaryColor.withAlpha(30),
                        Colors.white.withAlpha(30),
                      ],
                      begin: index % 2 == 1
                          ? Alignment.bottomCenter
                          : Alignment.topCenter,
                      end: index % 2 == 1
                          ? Alignment.topCenter
                          : Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      playListItem.title,
                      style: TextStyle(
                        fontSize: 18,
                        color: kTextColor,
                      ),
                    ),
                    Text(
                      playListItem.date,
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
