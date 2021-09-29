import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants.dart';

class YearWrapUp extends StatelessWidget {
  const YearWrapUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DelayedDisplay(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: size.width * 0.35,
              height: 150,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Positioned(
                    left: size.width * 0.35 / 2 - 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset(
                        'assets/images/wrapped3.png',
                        width: size.width * 0.35 / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.35 / 4 - 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset(
                        'assets/images/wrapped2.png',
                        width: size.width * 0.35 / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset(
                        'assets/images/wrapped1.png',
                        width: size.width * 0.35 / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.55,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SEE WHO YOU LISTENED TO IN 2020",
                    style: TextStyle(
                      fontSize: 16,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Your top artists, songs and podcasts of the year and more..",
                    style: TextStyle(
                      fontSize: 14,
                      color: kTextColor,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
