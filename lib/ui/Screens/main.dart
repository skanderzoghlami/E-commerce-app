import 'package:flutter/material.dart';
import './categories.dart';
import './bestSellers.dart';
//import './product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(), //a eliminer
        body: SingleChildScrollView(
          child: Column(
            children: [
              Categories(),
              Row(
                children: [
                  Text(
                    'Best Sellers',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),

              //Center(
              //child:
              BestSellers(),
              //),
              //Product('./assets/table.jpg', 'Table', '200DT'),
            ],
          ),
        ),
      ),
    );
  }
}
