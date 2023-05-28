import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:potfolio/utils/animated_icon_button.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(icon: FontAwesomeIcons.facebook, onTap: () {}),
        AnimatedIconButton(icon: FontAwesomeIcons.instagram, onTap: () {}),
        AnimatedIconButton(icon: FontAwesomeIcons.twitter, onTap: () {}),
      ],
    );
  }
}
