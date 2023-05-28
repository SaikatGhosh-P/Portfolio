import 'package:flutter/material.dart';
import 'package:potfolio/Data/data_info.dart';
import 'package:potfolio/components/about.dart';
import 'package:potfolio/components/education.dart';
import 'package:potfolio/components/experience.dart';
import 'package:potfolio/components/footer.dart';
import 'package:potfolio/components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;
  final skillKey = GlobalKey();
  final experienceKey = GlobalKey();
  final educationKey = GlobalKey();
  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(educationKey.currentContext!);
            },
            child: Text("Education")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(experienceKey.currentContext!);
            },
            child: Text("Experience")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(skillKey.currentContext!);
            },
            child: Text("Skills")),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    EducationInfo educationInfo = EducationInfo.educationInfo[0];

    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  About(),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Education(
                      key: educationKey,
                      educationInfo: EducationInfo.educationInfo),
                ],
              ),
              Experience(key: experienceKey),
              Skills(
                key: skillKey,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
