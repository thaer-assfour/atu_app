import 'package:atu_app/Widgets/sharedWidgets.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../Widgets/myDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("ATU APP"),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(32),
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color(0xffa8dadc),
                child: Image.network(
                  "https://img.icons8.com/officel/2x/person-male.png",
                  color: Color(0xff384669),
                  //  fit: BoxFit.cover,
                ),
              ),
            ),
            ShowUpList(
              delayBetween: Duration(milliseconds: 400),
                children: [
              homeCard(context,"Full name","Thaer Assfour"),
              homeCard(context,"Age","32"),
              homeCard(context,"Job title","Flutter developer"),
              homeCard(context,"Email","Thaer.assfour@gmail.com"),
              homeCard(context,"Mobile","0962101753"),
            ]),
          ],
        ),
      ),
    ));
  }
}
