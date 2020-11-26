import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  final String img;
  final String txt;
  Cover(this.img, this.txt);
  @override
  Widget build(BuildContext context) {
    return //Container(
        //width: 300,
        //height: 300,
        //child:
        Stack(alignment: Alignment.center, children: <Widget>[
      Container(
        //height: MediaQuery.of(context).size.height * 0.4,
        height: MediaQuery.of(context).size.height * 0.3,
        width: double.infinity,
        child: Image(
          image: AssetImage(img),
          fit: BoxFit.fitWidth,
        ),
      ),
      //child: Image.asset(img),
      /* decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img)),
          borderRadius: BorderRadius.circular(16),
        ),
        height: 300,
        width: double.infinity,*/
      //fit : BoxFit.cover,
      Text(
        txt,
        style: TextStyle(fontSize: 26, color: Colors.white),
      ),
    ]);
  }
}
