import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: Text(
            "My Experience",
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
          ),
        ),
        //
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Bassetti ITES Pvt Ltd",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text(
                      "Feb 2022 - Present",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "Associate Engineer",
                    ),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Fame World Educational Hub",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text(
                      "Nov 2021 - Feb 2022",
                    ),
                    labelStyle: TextStyle(color: Colors.cyan),
                    side: BorderSide(color: Colors.cyan),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "Web Developer Intern",
                    ),
                    labelStyle: TextStyle(color: Colors.cyan),
                    side: BorderSide(color: Colors.cyan),
                    backgroundColor: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
