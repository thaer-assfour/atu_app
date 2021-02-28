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
    ));
  }
}
