import 'dart:io';
import 'package:atu_app/education/education.dart';
import 'package:atu_app/experience/experience.dart';
import 'package:atu_app/skills/skills.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.0, color: Colors.teal),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(48.0),
          topRight: Radius.circular(48.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(32),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xffa8dadc),
              child: Image.network(
                "https://img.icons8.com/officel/2x/person-male.png",
                color: Color(0xff384669),
                width: 75,
                fit: BoxFit.contain,
                //  fit: BoxFit.cover,
              ),
            ),
          ),
          Divider(color: Color(0xff384669),thickness: 1,),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  LineIcons.lineChart,
                  size: 24,
                  color: Color(0xff384669),
                ),
                title: Text(
                  "Skills",
                ),
                trailing: Icon(
                  LineIcons.arrowCircleRight,
                  size: 24,
                  color: Color(0xff384669),
                ),
              ),
              onTap: () {
                Navigator. pop(context);
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 400),
                    type: PageTransitionType.rightToLeft,
                    child: Skills(),
                  ),
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  LineIcons.wiredNetwork,
                  size: 24,
                  color: Color(0xff384669),
                ),
                title: Text(
                  "Work experience",
                ),
                trailing: Icon(
                  LineIcons.arrowCircleRight,
                  size: 24,
                  color: Color(0xff384669),
                ),
              ),
              onTap: () {
                Navigator. pop(context);
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 400),
                    type: PageTransitionType.rightToLeft,
                    child: Experience(),
                  ),
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  LineIcons.bookOpen,
                  size: 24,
                  color: Color(0xff384669),
                ),
                title: Text(
                  "Education",

                ),
                trailing: Icon(
                  LineIcons.arrowCircleRight,
                  size: 24,
                  color: Color(0xff384669),
                ),
              ),
              onTap: () {
                Navigator. pop(context);
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 400),
                    type: PageTransitionType.rightToLeft,
                    child: Education(),
                  ),
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  LineIcons.phone,
                  size: 24,
                  color: Color(0xff384669),
                ),
                title: Text(
                  "Call us",
                ),
                trailing: Icon(
                  LineIcons.arrowCircleRight,
                  size: 24,
                  color: Color(0xff384669),
                ),
              ),
              onTap: () {

              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  size: 24,
                  color: Color(0xff384669),
                ),
                title: Text("Exit",
                    ),
              ),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 500), () {
                  exit(0);
                });
              },
            ),
          ),
        ],
      ),
    ) ;// Details Container


  }
}
