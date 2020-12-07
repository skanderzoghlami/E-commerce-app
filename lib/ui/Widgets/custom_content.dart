import 'package:flutter/material.dart';

class CustomContent extends StatelessWidget {
  final IconData icon;
  final String text;
  CustomContent({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.indigo,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 45.0, color: Colors.white),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
