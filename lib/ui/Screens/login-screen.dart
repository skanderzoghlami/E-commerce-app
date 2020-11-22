import 'package:ecommerceapp/ui/Widgets/primary-button.dart';
import 'package:ecommerceapp/ui/size-config.dart';
import 'package:ecommerceapp/ui/style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = 'sign_in';
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  // This is initState a function that will be called at the first state of the app
  // The first state is the one when the object is added to the tree
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // This is used to make sure the call to the api is only made when the screen is fully built
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _key = GlobalKey<FormState>();
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
      key: _scaffoldKey,
      backgroundColor: Style.darkColor,
      body: ListView(
        children: <Widget>[
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          Center(
            child: Text('Log in now', style: Style.appNameTextStyle),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizental * 4),
            child: Form(
                key: _key,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    TextFormField(
                      controller: _email,
                      onSaved: (v) {
                        // user.email = v ;
                      },
                      decoration: Style.inputDecoration('Email'),
                      validator: (v) {
                        if (v.isEmpty) {
                          return 'this field is required';
                        } else if (false) {
                          return 'e-mail is not valid';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    TextFormField(
                        controller: _password,
                        onSaved: (v) {
                          // user.password = v ;
                        },
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
                  ],
                )),
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
            if (_key.currentState.validate()) {
              print('isValidate');
            } else {
              print('not validate');
            }
            print('done');
          },
        ),
      ),
    );
  }
}
