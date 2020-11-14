import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    final PageController _pageController = new PageController();
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Center(child: Text("ProductScreen")),
          ),
          Container(color: Colors.green, child: Center(child: Text("Login"))),
          Container(color: Colors.blue, child: Center(child: Text("My cart")))
        ],
      ),
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: currentIndex,
        onTap: (i) {
          setState(() {
            currentIndex = i;
            _pageController.animateToPage(i,
                duration: kTabScrollDuration, curve: Curves.easeIn);
          });
        },
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text("Products")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.security,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.security,
                color: Colors.deepPurple,
              ),
              title: Text("Login")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.add_shopping_cart,
                color: Colors.indigo,
              ),
              title: Text("My cart")),
        ],
      ),
    );
  }
}
