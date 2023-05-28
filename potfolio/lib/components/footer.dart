import 'package:flutter/material.dart';
import 'package:potfolio/utils/socialrow.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          SocialRow(),
          Text(
            "SaikatGhosh",
          ),
        ],
      ),
    );
  }
}
