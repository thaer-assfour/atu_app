import 'package:atu_app/Login/background.dart';
import 'package:atu_app/Widgets/sharedWidgets.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backGround(),
        Scaffold(
          appBar: AppBar(
            title: Text("Education"),
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
                      educationCard(context, "Syrian Virtual University", "2016", "2018", "Any description for this text is here! BIT Degree."),
                      Divider(),
                      educationCard(context, "Technical Computer College", "2008", "2010", "Any description for Technical computer college.")
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
