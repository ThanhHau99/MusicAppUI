import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/constants.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DelayedDisplay(
              delay: Duration(milliseconds: 100),
              fadingDuration: Duration(milliseconds: 600),
              slidingBeginOffset: Offset(-1, 0),
              child: Container(
                width: size.width * 0.3,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'EXPLORE',
                    style: TextStyle(
                      color: kTextColor,
                      letterSpacing: 3,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
            ),
            DelayedDisplay(
              delay: Duration(milliseconds: 100),
              fadingDuration: Duration(milliseconds: 600),
              slidingBeginOffset: Offset(1, 0),
              child: Container(
                width: size.width * 0.6,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Text(
                    'UPGRADE TO PREMIUM',
                    style: TextStyle(
                      fontSize: 12,
                      color: kTextColor,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  label: SvgPicture.asset('assets/icons/spotify.svg'),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
