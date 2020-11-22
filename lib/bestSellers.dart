import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:shops/pictures.dart';
import './pictures.dart';
import './product.dart';

class BestSellers extends StatelessWidget {
  final Axis scrollDirection = Axis.vertical;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      shrinkWrap: true,
      // Generate 100 widgets that display their index in the List.
      primary: false,
      //scrollDirection: ScrollDirection.,

      //padding: const EdgeInsets.only(left: 10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: <Widget>[
        Product('./assets/table.jpg', 'Table', '200DT'),
        Product('./assets/sofabs2.jpg', 'Sofa', '1000DT'),
        Product('./assets/sofabs4.jpg', 'Chair', '600DT'),
        Product('./assets/lampe4.jpg', 'Bed', '50DT'),
        Product('./assets/lampe4.jpg', 'Bed', '50DT'),
        Product('./assets/lampe4.jpg', 'Bed', '50DT'),
        Product('./assets/lampe4.jpg', 'Bed', '50DT'),
      ],
      //)
    );

    //),
    //);
    //);
  }
}
