import 'package:atu_app/Login/CustomTextField.dart';
import 'package:flutter/material.dart';

import 'Login/background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff457b9d),
          accentColor: Color(0xff83c5be)),
      home: SafeArea(child: Register()),
    );
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool _starting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backGround(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Image.network("https://i.ibb.co/jrDGz0z/download.jpg"),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        labelText: "Username",
                        icon: Icon(Icons.person),
                      ),
                      CustomTextField(
                        labelText: "Password",
                        icon: Icon(Icons.lock_outline),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
