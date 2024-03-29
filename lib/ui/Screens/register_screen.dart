import 'package:ecommerceapp/ui/Widgets/primary_button.dart';
import 'package:ecommerceapp/ui/size_config.dart';
import 'package:ecommerceapp/ui/style.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static final routeName = 'sign_up';
  SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var checkBoxValue = false;
  final _key = GlobalKey<FormState>();
  TextEditingController _password = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _name = new TextEditingController();
  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Style.darkColor,
        body: ListView(
          children: <Widget>[
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            Center(
              child: Text('Join us now !', style: Style.appNameTextStyle),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizental * 4),
              child: Form(
                  key: _key,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                          controller: _name,
                          onSaved: (v) {},
                          decoration: Style.inputDecoration('Full name'),
                          validator: (v) {
                            if (v.isEmpty) {
                              return 'this field is required';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(height: SizeConfig.blockSizeVertical * 2),
                      TextFormField(
                          controller: _email,
                          onSaved: (v) {},
                          decoration: Style.inputDecoration('Email'),
                          validator: (v) {
                            if (v.isEmpty) {
                              return 'this field is required';
                            } else if (false) {
                              return 'e-mail is not valid';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(height: SizeConfig.blockSizeVertical * 2),
                      TextFormField(
                          controller: _password,
                          onSaved: (v) {},
                          obscureText: true,
                          decoration: Style.inputDecoration('Password'),
                          validator: (v) {
                            if (v.isEmpty) {
                              return 'this field is required';
                            } else if (v.trim().length < 6) {
                              return 'password too short';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(height: SizeConfig.blockSizeVertical * 2),
                      TextFormField(
                          onSaved: (v) {
                            //
                          },
                          obscureText: true,
                          decoration: Style.inputDecoration('Password confirm'),
                          validator: (v) {
                            if (v.isEmpty) {
                              return 'this field is required';
                            } else if (v.trim() != _password.text.trim()) {
                              return "passwords doesnt match ";
                            } else {
                              return null;
                            }
                          }),
                    ],
                  )),
            ),
            CheckboxListTile(
              title: Text("By clicking save you agree on our terms of service"),
              value: checkBoxValue,
              onChanged: (newValue) {
                setState(() {
                  checkBoxValue = newValue;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            )
          ],
        ),
        bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: PrimaryButton(
                child: Text(
                  'save',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 32),
                ),
                onTap: () async {
                  if ((_key.currentState.validate()) &&
                      (checkBoxValue == true)) {
                    print('isValidate');
                  } else {
                    print('not validate');
                  }
                  print('done');
                })));
  }
}
