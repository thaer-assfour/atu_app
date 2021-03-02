import 'package:atu_app/Login/background.dart';
import 'package:atu_app/Widgets/sharedWidgets.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backGround(),
        Scaffold(
          appBar: AppBar(
            title: Text("Skills"),
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
                      skillsCard(context, "DBA Admin","Database administrator, automation task as sql programming."),
                      Divider(),
                      skillsCard(context, "Windows Server Admin","installing and maintenance for all windows server version."),
                      Divider(),
                      skillsCard(context, "CCNA Skills","Routing and switching for all cisco routers."),
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
