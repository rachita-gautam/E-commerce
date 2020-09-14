import 'package:flutter/material.dart';
import 'package:e_commerce/screens/Cakes.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      decoration: BoxDecoration(
//        color: Colors.grey.shade100,
//      ),
      height: 100,
      margin: EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          NewIcons(
            logo: "images/Icon8Cake.png",
            colour: Colors.pinkAccent,
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
          NewIcons(
            logo: 'images/Icon8Cookies.png',
            colour: Colors.brown.shade600,
            text: 'Cookies',
          ),
          NewIcons(
            logo: 'images/Icon8Gift.png',
            colour: Colors.indigo,
            text: 'Gifts',
          ),
          NewIcons(
            logo: 'images/Icon8Burger.png',
            colour: Colors.brown.shade500,
            text: 'Burgers',
          ),
          NewIcons(
            logo: 'images/Icon8Pizza.png',
            colour: Colors.red,
            text: 'Pizza',
          ),
          NewIcons(
            logo: 'images/Icon8Mug.png',
            colour: Colors.blue,
            text: 'Mugs',
          ),
        ],
      ),
    );
  }
}

class NewIcons extends StatelessWidget {
  NewIcons({this.text, this.colour, this.logo, this.onPressed});
  final logo;
  final String text;
  final Color colour;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RawMaterialButton(
          elevation: 10,
          // child: CircleAvatar(
          //   maxRadius: 28,
          //   backgroundColor: Color(0xffffbdf7).withOpacity(0.5),
          child: Image.asset(logo),
          // ),
          onPressed: onPressed,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            text,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
