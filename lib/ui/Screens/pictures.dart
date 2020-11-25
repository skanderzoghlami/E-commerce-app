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
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img)),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Text(
            txt,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
/* final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 20),
      height: categoryHeight,
      decoration: BoxDecoration(
          color: Colors.orange.shade400,
          image: DecorationImage(image: AssetImage(img)),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              txt,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "20 Items",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );*/

//Container(
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
// children: [

//child: Padding(
// padding: EdgeInsets.all(16.0),
//child: Image(image: AssetImage(img)),

/*Text(
              txt,
              textAlign: TextAlign.center,
            ),*/
//]),
//);
