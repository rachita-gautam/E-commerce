import 'package:e_commerce/screens/category_page.dart';
import 'package:e_commerce/screens/main_screen.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainScreen(),
            ),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryPage(),
            ),
          );
      }
      setState(() {
        _selectedIndex = index;
      });
    }

    //   void navigateToScreens(int index) {
    //     if(_selectedIndex == index){
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => MyApp(),
    //         ),
    //       );
    //     }else{
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => MyApp(),
    //         ),
    //       );
    //     }
    //   }
    // }

    return BottomNavigationBar(
      backgroundColor: Color(0XFF2e1763),
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
//          backgroundColor: Color(0XFF2e1763),
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0xffffbdf7),
          icon: Icon(
            Icons.category,
            color: Colors.white,
          ),
          title: Text(
            'Category',
            style: TextStyle(color: Colors.white),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Color(0xffffbdf7),
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          title: Text(
            'Cart',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFAA292E),
      onTap: _onItemTapped,
    );
  }
}

//Icon(
//Icons.home,
//color: Colors.white,
//size: 40,
//),
//          Icon(
//            Icons.category,
//            color: Color(0xffffbdf7),
//          ),
//          Icon(
//            Icons.shopping_cart,
//            color: Color(0xffffbdf7),
//          ),
//

//
//Container(
//height: 65,
//decoration: BoxDecoration(color: Color(0XFF2e1763)),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.center,
//mainAxisAlignment: MainAxisAlignment.spaceAround,
//children: [
//Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: [
//Container(
//decoration:
//BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
//child: Center(
//child: Icon(
//Icons.home,
//color: Colors.white,
//size: 40,
//),
//),
//),
//Icon(
//Icons.home,
//color: Colors.white,
//size: 40,
//),
//Icon(
//Icons.home,
//color: Colors.white,
//size: 40,
//),
//],
//)
//],
//),
//);
