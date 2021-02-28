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
          primaryColor: Color(0xff384669),
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
  bool _autoValidate = false;


  String PhoneValidator(String value) {

    if (value.isEmpty) return "Phone number required";
    else if (value.length < 10)
      return "Phone number at least 10 numbers";
    else
      return null;
  }

  String passwordValidator(String value) {
    if (value.isEmpty)
      return "Password required";
    else if (value.length < 8)
      return "password at least 8 character";
    else
      return null;
  }




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
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.1,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.5,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.25,
                child: Image.network("https://i.ibb.co/jrDGz0z/download.jpg"),
              ),
              Form(
                  autovalidate: _autoValidate,
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        labelText: "Phone number",
                        icon: Icon(Icons.phone),
                        validator: PhoneValidator,
                        prefixText: "09",
                      ),
                      CustomTextField(
                        labelText: "Password",
                        obsecure: true,
                        icon: Icon(Icons.lock_outline),
                        validator: passwordValidator,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Login", style: TextStyle(color: Colors.white,fontSize: 18),),
                            color: Theme
                                .of(context)
                                .primaryColor,
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                        ),
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
