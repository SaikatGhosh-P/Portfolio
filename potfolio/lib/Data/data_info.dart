import 'package:equatable/equatable.dart';

class EducationInfo extends Equatable {
  final String date;
  final String event;
  final String eventDetails;

  EducationInfo({
    required this.date,
    required this.event,
    required this.eventDetails,
  });

  static List<EducationInfo> educationInfo = [
    EducationInfo(
        date: "March 2014",
        event: "Master of Computer Application (MCA)",
        eventDetails: "Passed From West Bengal University of Technology"),
    EducationInfo(
        date: "March 2019",
        event: "Bachelor In Science (BSc.)",
        eventDetails: "Passed From Calcutta University"),
    EducationInfo(
        date: "March 2016",
        event: "Higher Secondary(12th)",
        eventDetails: "Passed From Bagnan High School"),
    EducationInfo(
        date: "March 2022",
        event: "Secondary(10th)",
        eventDetails: "Passed From Bagnan High School"),
  ];

  List<Object?> get props => [];
}
