import 'package:flutter/material.dart';
import './pictures.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            children: [
              Picture('./assets/chair.jpg', 'Chair'),
              Picture('./assets/bed.jpg', 'Bed'),
              Picture('./assets/bureau3.jpg', 'Desks'),
              Picture('./assets/sofa.jpg', 'Sofa'),
            ],
          ),
        ],
      ),
    );
  }
}
