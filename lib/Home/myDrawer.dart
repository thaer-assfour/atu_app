import 'package:atu_app/Login/background.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}
// image address
//https://p7.hiclipart.com/preview/247/564/869/computer-icons-user-profile-clip-art-user-avatar.jpg
class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          backGround(),
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
