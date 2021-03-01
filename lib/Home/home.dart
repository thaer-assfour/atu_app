import 'package:flutter/material.dart';

import 'myDrawer.dart';

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
            )
          ],
        ),
      ),
    ));
  }
}
