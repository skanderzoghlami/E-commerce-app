import 'package:flutter/material.dart';
import 'package:shops/view/productListView.dart';
import 'package:shops/view/productView.dart';

import '../bestSellers.dart';
import '../categories.dart';
import '../cover.dart';
import '../product.dart';

class Home extends StatefulWidget {
  final mainAxisSize = MainAxisSize.min;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  double get heightSize {
    return MediaQuery.of(context).size.height;
  }

  Widget build(BuildContext context) {
    //final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SafeArea(
            //child: SingleChildScrollView(
            //child: Stack(
            // children: [
            Cover('./assets/bestpdc.jpg', 'New Collection'),
            /* Container(
                  child: Text('Hello'),
                  height: heightSize * 0.5,
                  width: double.infinity),*/
            // Positioned(
            // top: heightSize * 0.2,
            //child: Container(
            //height: size.height,
            //child: Column(
            //children: [
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
            BestSellers(),
          ],
        ),
        /*ProductListView(
                        productListView: [
                          for (var i = 0; i < 7; i++)
                            ProductView(
                              product: Product(
                                id: 1,
                                name: "Table",
                                description: "good table",
                                price: "200",
                                img: './assets/table.jpg',
                              ),
                            ),
                        ],
                      )*/
        // ],
        //),
        //),
      ),
    );

    //),
    //Product('./assets/table.jpg', 'Table', '200DT'),
  }
}
