import 'package:e_commerce/common_widget/bottomNavBar.dart';
import 'package:e_commerce/screens/Cakes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        title: Text(
          "Categories",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
//                fontFamily: 'Pacifico',
//                  fontStyle: FontStyle.italic,
              fontSize: 25),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0XFF2e1763), Color(0xffffbdf7)])),
        ),
      ),
      body: ListView(
        children: [
          CategoryListItems(
            icon: "images/Icon8Cake.png",
            text: 'Cakes',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cakes(),
                ),
              );
            },
          ),
          CategoryListItems(
            icon: 'images/Icon8Gift.png',
            text: 'Gifts',
          ),
          CategoryListItems(
            icon: 'images/Icon8Burger.png',
            text: 'Burgers',
          ),
          CategoryListItems(
            icon: 'images/Icon8Cookies.png',
            text: 'Cookies',
          ),
          CategoryListItems(
            icon: 'images/Icons8Pie.png',
            text: 'Pie',
          ),
          CategoryListItems(
            icon: 'images/Icon8Pizza.png',
            text: 'Pizza',
          ),
          CategoryListItems(
            icon: "images/Icons8Bread.png",
            text: 'Bread',
          ),
          CategoryListItems(
            icon: "images/Icons8Donut.png",
            text: 'Donut',
          ),
          CategoryListItems(
            icon: "images/Icons8Pancake.png",
            text: 'Pancake',
          ),
          CategoryListItems(
            icon: "images/Icons8Waffle.png",
            text: 'Waffle',
          ),
        ],
      ),
      bottomNavigationBar: Buttons(),
    );
  }
}

class CategoryListItems extends StatelessWidget {
  CategoryListItems({this.icon, this.text, this.onPressed});
  final String text;
  final icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.2),
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            height: 65,
            // color: Colors.grey.withOpacity(0.2),
            width: double.infinity,
            child: Row(
              children: [
                RawMaterialButton(
                  child: Image.asset(icon),
                  // Icon(FontAwesomeIcons.birthdayCake,
                  //     color: Colors.pink, size: 27),
                  onPressed: onPressed,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple.shade900,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Spacer(),
                RawMaterialButton(
                  child: Icon(
                    FontAwesomeIcons.arrowAltCircleRight,
                    color: Colors.black54,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cakes(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 0,
          width: 350,
          child: Divider(
            thickness: .5,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
