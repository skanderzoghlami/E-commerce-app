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
        Stack(children: <Widget>[
      Container(
        //height: MediaQuery.of(context).size.height * 0.4,
        //height: MediaQuery.of(context).size.height * 0.3,
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: 10,
                  left: 20,
                ),
                child: Text(
                  txt,
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 40,
                  left: 20,
                ),
                child: Text(
                  "The top design trends in 2020",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
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
    ]);
  }
}
