import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:potfolio/Data/data_info.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timelines/timelines.dart';

class Education extends StatefulWidget {
  final List<EducationInfo> educationInfo;
  const Education({super.key, required this.educationInfo});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.5
              : context.screenWidth * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Education',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          ),
          //
          const SizedBox(
            height: 100.0,
          ),
          Timeline.tileBuilder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              builder: TimelineTileBuilder.fromStyle(
                itemCount: EducationInfo.educationInfo.length,
                contentsAlign: ContentsAlign.alternating,
                contentsBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${EducationInfo.educationInfo[index].date}",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.indigo),
                          ),
                          Text(
                            "${EducationInfo.educationInfo[index].event}",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "${EducationInfo.educationInfo[index].eventDetails}",
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
