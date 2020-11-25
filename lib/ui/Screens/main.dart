import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './categories.dart';
import './bestSellers.dart';
import './cover.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      /*home: Scaffold(
        body: SafeArea(
          //child: SingleChildScrollView(
          child: Stack(
            children: [
              // Cover('./assets/pdc4.jpg', 'New Collection'),
              Container(
                  child: Text('Hello'),
                  height: heightSize * 0.5,
                  width: double.infinity),
              /*Positioned(
                      top: 100,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Categories(),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16)),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 6),
                              child: Text(
                                'Best Sellers',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 26),
                              ),
                            ),

                            //Center(
                            //child:
                            BestSellers(),
                          ],
                        ),
                      ),
                    ),*/

              //),
              //Product('./assets/table.jpg', 'Table', '200DT'),
            ],
          ),
          // ),
        ),
      ),*/
    );
  }
}

/*class Home extends StatefulWidget {
  final mainAxisSize = MainAxisSize.min;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  double get heightSize {
    return MediaQuery.of(context).size.height;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Cover('./assets/pdc4.jpg', 'New Collection'),
              /* Container(
                  child: Text('Hello'),
                  height: heightSize * 0.5,
                  width: double.infinity),*/
              Positioned(
                top: heightSize * 0.3,
                child: Container(
                  child: Column(
                    children: [
                      // Container(
                      //child:
                      Categories(),
                      // decoration: BoxDecoration(
                      // borderRadius:
                      //  BorderRadius.only(topLeft: Radius.circular(16)),
                      // ),
                      // ),

                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 6),
                        child: Text(
                          'Best Sellers',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 26),
                        ),
                      ),

                      //Center(
                      //child:
                      //BestSellers(),
                    ],
                  ),
                ),
              ),

              //),
              //Product('./assets/table.jpg', 'Table', '200DT'),
            ],
          ),
        ),
      ),
    );
  }
}*/
