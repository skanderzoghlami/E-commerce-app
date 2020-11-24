import 'package:ecommerceapp/ui/Screens/admin-screen.dart';
import 'package:ecommerceapp/ui/Screens/article-detail-screen.dart';
import 'package:ecommerceapp/ui/Screens/choose-screen.dart';
import 'package:ecommerceapp/ui/Screens/my_bag-screen.dart';
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
            child: Center(
              child: RaisedButton(
                child: Text("Product detail"),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          ProductDetailScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
              color: Colors.green,
              child: Center(
                  child: RaisedButton(
                child: Text("Login"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (WelcomeScreen())),
                  );
                },
              ))),
<<<<<<< HEAD
          Container(color: Colors.blue, child: Center(child: Text("My cart"))),
          AdminScreen(),
=======
          MyBagScreen(),
          Container(color: Colors.orange, child: Center(child: Text("Admin"))),
>>>>>>> dev
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
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.admin_panel_settings,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.admin_panel_settings,
                color: Colors.indigo,
              ),
              title: Text("Admin")),
        ],
      ),
    );
  }
}
