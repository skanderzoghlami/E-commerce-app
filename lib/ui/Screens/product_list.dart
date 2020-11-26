import 'package:ecommerceapp/ui/Widgets/bestSellers.dart';
import 'package:ecommerceapp/ui/Widgets/categories.dart';
import 'package:ecommerceapp/ui/Widgets/cover.dart';
import 'package:flutter/material.dart';

//import './product.dart';

class ProductList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Cover('assets/imagesproduct/pdc4.jpg', 'New Collection'),
                Categories(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Best Sellers',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
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
      ),
    );
  }
}
