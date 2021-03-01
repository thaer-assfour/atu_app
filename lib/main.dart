import 'package:atu_app/Login/CustomTextField.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import 'Home/home.dart';
import 'Login/background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]); // #force to set Orientations to portrait only.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff384669), accentColor: Color(0xff83c5be)),
      builder: BotToastInit(),
      home: SafeArea(child: Home()),
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
  String phoneNumber = "";
  String password = "";
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String phoneValidator(String value) {
    if (value.isEmpty)
      return "Phone number required";
    else if (value.length < 8)
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

  String login(phoneNumber, password) {
    final FormState form = _formKey.currentState;
    if (_formKey.currentState.validate()) {
      form.save();

      if (phoneNumber != "0999111222")
        return "Opps wrong phone number!";
      else if (password != "123456789")
        return "Opps wrong password";
      else
        return "Success";
    } else {
      _autoValidate = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backGround(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Image.network("https://i.ibb.co/jrDGz0z/download.jpg"),
                ),
                Form(
                    autovalidate: _autoValidate,
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: phoneNumberController,
                          labelText: "Phone number",
                          icon: Icon(Icons.phone),
                          keyboardType: "number",
                          validator: phoneValidator,
                          prefixText: "09",
                          onSaved: (val) {
                            phoneNumber = "09" + phoneNumberController.text;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(28,2,0,8),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("Example:0999111222",style: TextStyle(color: Colors.grey.withOpacity(0.5),fontSize: 12),)),
                        ),
                        CustomTextField(
                          controller: passwordController,
                          labelText: "Password",
                          obsecure: true,
                          icon: Icon(Icons.lock_outline),
                          validator: passwordValidator,
                          onSaved: (val) {
                            password = passwordController.text;
                          },
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: RaisedButton(
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              _formKey.currentState.save();
                              String authResult = login(phoneNumber, password);
                              if (authResult != "Success")
                                BotToast.showSimpleNotification(
                                    title: "Wrong",
                                    subTitle: authResult.toString(),
                                    titleStyle:
                                        TextStyle(color: Color(0xfff7f7f7)),
                                    subTitleStyle:
                                        TextStyle(color: Color(0xfff7f7f7)),
                                    backgroundColor: Color(0xff384669));
                              else
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Home()));
                                Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                    duration: Duration(milliseconds: 400),
                                    type: PageTransitionType.rightToLeft,
                                    child: Home(),
                                  ),
                                );
                            },
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            color: Theme.of(context).primaryColor,
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
