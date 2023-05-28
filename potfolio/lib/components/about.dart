import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:potfolio/utils/animated_contact.dart';
import 'package:potfolio/utils/socialrow.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/dev.png',
                height: 156.0,
              ),
              Text(
                'Name',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Details",
                  textAlign: TextAlign.center,
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text("Full Stack Developer"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                  Chip(
                    label: Text("App Developer"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  )
                ],
              ),
              //
              Divider(),
              //
              AnimatedContact(
                icon: FontAwesomeIcons.github,
                title: "GitHub",
                subtitle: "Saikat Ghosh",
                onTap: () {},
              ),
              AnimatedContact(
                icon: FontAwesomeIcons.github,
                title: "GitHub",
                subtitle: "Saikat Ghosh",
                onTap: () {},
              ),
              AnimatedContact(
                icon: FontAwesomeIcons.linkedin,
                title: "LinkedIn",
                subtitle: "Saikat Ghosh",
                onTap: () {},
              ),
            ],
          ),
          Column(
            children: [
              Divider(),
              SocialRow(),
            ],
          )
          //
        ],
      ),
    );
  }
}
