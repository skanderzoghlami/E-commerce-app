import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  int numOfItems = 1;
  @override
  _CartCounterState createState() => _CartCounterState();

  getNumOfItems() {
    return numOfItems;
  }
}

class _CartCounterState extends State<CartCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (widget.numOfItems > 1) {
              setState(() {
                widget.numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.all(7),
          child: Text(
            widget.numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                widget.numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 28,
      height: 25,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
