import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String img;
  final String txt;
  final String price;
  Product(this.img, this.txt, this.price);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          mainAxisSize:
              MainAxisSize.min, //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              margin: EdgeInsets.fromLTRB(6, 10, 0, 10),
              width: 130,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(img)),
                borderRadius: BorderRadius.circular(16),
              ),
              //child: Padding(
              // padding: EdgeInsets.all(16.0),
              //child: Image(image: AssetImage(img)),
            ),
            Text(
              txt,
              textAlign: TextAlign.center,
            ),
          ]),
    );
  }
}
