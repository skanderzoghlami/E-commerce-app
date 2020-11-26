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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Cover('assets/imagesproduct/pdc4.jpg', 'New Collection'),
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
