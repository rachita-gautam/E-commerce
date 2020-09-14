import 'package:e_commerce/others/const.dart';
import 'package:e_commerce/screens/Cakes.dart';
import 'package:e_commerce/screens/category_page.dart';
import 'package:e_commerce/screens/main_screen.dart';
import 'package:e_commerce/screens/user_page.dart';
import 'package:e_commerce/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
//      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
//          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 70,
              child: DrawerHeader(
//    margin: EdgeInsets.all(0),
                padding: EdgeInsets.zero,
                child: Stack(
                  children: [
                    Container(
//          padding: EdgeInsets.all(20),
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kVioletColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.user,
                            color: Colors.white,
                          ),
//              SizedBox(
//                width: 1,
//              ),
                          FlatButton(
                            child: Text(
                              'LogIn/SignUp',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomeScreen(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            _createDrawerItems(
              icon: FontAwesomeIcons.user,
              text: 'User Name',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyUserProfile(),
                ),
              ),
            ),
            _createDrawerItems(
              icon: Icons.home,
              text: 'Home',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainScreen(),
                ),
              ),
            ),
            _createDrawerItems(
              icon: Icons.cake,
              text: 'Cakes',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cakes(),
                ),
              ),
            ),
            _createDrawerItems(
              icon: Icons.hourglass_empty,
              text: '2 hours Delivery',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryPage(),
                ),
              ),
            ),
            _createDrawerItems(
              icon: Icons.card_giftcard,
              text: 'Gifts',
            ),
            _createDrawerItems(
              icon: Icons.contacts,
              text: 'Contact Us',
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerItems(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 28,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Color(0xFF484848),
                  fontSize: 16,
                ),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
            )
          ],
        ),
        SizedBox(
          width: 250,
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
