import 'package:ecommerceapp/ui/Screens/login_screen.dart';
import 'package:ecommerceapp/ui/Screens/register_screen.dart';
import 'package:ecommerceapp/ui/Widgets/primary_button.dart';
import 'package:ecommerceapp/ui/size_config.dart';
import 'package:ecommerceapp/ui/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static final routeName = 'welcome';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Style.darkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text('Welcome to E-commerce App',
                  style: Style.appNameTextStyle),
            ),
          ),
          Center(
            child: Text(
              "Where you can find ",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "All the products that you need !",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PrimaryButton(
                    child: Center(
                        child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    )),
                    onTap: () => Navigator.of(context)
                        .pushNamed(SignUpScreen.routeName)),
                SizedBox(
                  height: SizeConfig.blockSizeHorizental * 2,
                ),
                PrimaryButton(
                  child: Center(
                      child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  )),
                  onTap: () =>
                      Navigator.of(context).pushNamed(LoginScreen.routeName),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
