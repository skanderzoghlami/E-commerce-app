import 'package:ecommerceapp/ui/Screens/login-screen.dart';
import 'package:ecommerceapp/ui/Screens/product-screen.dart';
import 'package:ecommerceapp/ui/Screens/register-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: new MyApp(),
      title: 'E-commerce',
      debugShowCheckedModeBanner: false,
      // we will use named routes
      routes: {
        //'/': (context) => Home(),
        'sign_in': (context) => LoginScreen(),
        'sign_up': (context) => SignUpScreen(),
      },
      //initialRoute: '/',
    ),
  );
}

// This page is the first one in the app it will show a GIF and after 4 seconds redirect to home page
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProductScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/ecom.gif",
              gaplessPlayback: true,
            )));
  }
}
