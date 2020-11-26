import 'package:ecommerceapp/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

/*class BestSellers extends StatelessWidget {
  final Axis scrollDirection = Axis.vertical;

  @override
  Widget build(BuildContext context) {*/

class BestSellers extends StatefulWidget {
  final mainAxisSize = MainAxisSize.min;

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<BestSellers> {
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
      crossAxisSpacing: 7,
      mainAxisSpacing: 7,
      children: <Widget>[
        Product('assets/imagesproduct/table.jpg', 'Table', '200'),
        Product('assets/imagesproduct/sofabs2.jpg', 'Sofa', '1000'),
        Product('assets/imagesproduct/sofabs4.jpg', 'Chair', '600'),
        Product('assets/imagesproduct/lampe4.jpg', 'Lamp', '50'),
        Product('assets/imagesproduct/sofa16.jpg', 'Sofa', '2050'),
        Product('assets/imagesproduct/bureau.jpg', 'Desk', '150'),
        Product('assets/imagesproduct/chairvert.jpg', 'chair', '60'),
      ],
      //)
    );

    //),
    //);
    //);
  }
}
