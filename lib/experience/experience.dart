import 'package:atu_app/Login/background.dart';
import 'package:atu_app/Widgets/sharedWidgets.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
      return Stack(
      children: [
        backGround(),
        Scaffold(
          appBar: AppBar(
            title: Text("Work Experience"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Column(
                children: [
                  ShowUpList(
                    offset: -2,
                    children: [
                      experienceCard(context, "Samha Group", "2010", "2012", "- Excellent problem-solving and analytical skills."),
                      Divider(),
                      experienceCard(context, "SAMA NET", "2012", "2014", "- Running regular checks on network and data security"),
                      Divider(),
                      experienceCard(context, "SYRIATEL", "2014", "2020", "- My SYRIATEL Experience"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
