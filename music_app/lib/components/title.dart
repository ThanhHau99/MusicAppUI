import 'package:flutter/material.dart';
import 'package:music_app/constants.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key key,
    @required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kTextColor,
              letterSpacing: 3,
            ),
          )
        ],
      ),
    );
  }
}
