import 'package:ecommerceapp/models/products.dart';
import 'package:ecommerceapp/ui/Widgets/product_view.dart';
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
        for (var i = 0; i < allProducts.length; i++)
          ProductView(
            article: allProducts.elementAt(i),
          ),
      ],
      //)
    );

    //),
    //);
    //);
  }
}
