import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  final String img;
  final String txt;
  Picture(this.img, this.txt);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              margin: EdgeInsets.fromLTRB(6, 10, 0, 10),
              width: 70,
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
