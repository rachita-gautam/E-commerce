import 'dart:core';
import 'package:e_commerce/common_widget/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cakes extends StatefulWidget {
  @override
  _CakesState createState() => _CakesState();
}

class _CakesState extends State<Cakes> {
  // final List<String> _listItems = [
  //   'images/cone.jpg',
  //   'images/oreo.jpg',
  //   'images/redvelvet.jpg',
  //   'images/strawberry.jpg',
  //   'images/cone.jpg',
  //   'images/oreo.jpg',
  //   'images/redvelvet.jpg',
  //   'images/strawberry.jpg',
  //   'images/cone.jpg',
  //   'images/oreo.jpg',
  //   'images/redvelvet.jpg',
  //   'images/strawberry.jpg',
  //   'images/cone.jpg',
  //   'images/oreo.jpg',
  //   'images/redvelvet.jpg',
  //   'images/strawberry.jpg',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        title: Text(
          "Cakes",
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
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        primary: false,
        crossAxisSpacing: 10,
        childAspectRatio: 0.75,
        mainAxisSpacing: 15.0,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 25, bottom: 20, left: 10, right: 10),
        children: <Widget>[
          _buildFoodCard('Oreo Cake', 'USA', 'images/oreo.jpg', 75, 41, 1),
          _buildFoodCard(
              'Strawberry Cake', 'Canada', 'images/strawberry.jpg', 42, 45, 2),
          _buildFoodCard('Cone Cake', 'India', 'images/cone.jpg', 26, 42, 3),
          _buildFoodCard(
              'Redvelvet Cake', 'Italy', 'images/redvelvet.jpg', 26, 42, 3),
          _buildFoodCard('Oreo Cake', 'USA', 'images/oreo.jpg', 75, 41, 1),
          _buildFoodCard(
              'Strawberry Cake', 'Canada', 'images/strawberry.jpg', 42, 45, 2),
          _buildFoodCard('Cone Cake', 'India', 'images/cone.jpg', 26, 42, 3),
          _buildFoodCard(
              'Redvelvet Cake', 'Italy', 'images/redvelvet.jpg', 26, 42, 3),
        ],
      ),
      bottomNavigationBar: Buttons(),
    );
  }
}

Widget _buildFoodCard(String name, String origin, String cardImage, int likes,
    int commentCount, int cardIndex) {
  return Padding(
    padding: EdgeInsets.all(5.0),
//    padding: cardIndex.isEven
//        ? EdgeInsets.only(right: 15.0)
//        : EdgeInsets.only(left: 15.0),
    child: Container(
      height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
            color: Colors.pink, style: BorderStyle.solid, width: 1.0),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 125.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage(cardImage), fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  origin,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12.0,
                      color: Colors.grey),
                ),
              ),
              SizedBox(height: 3.0),
              Padding(
                padding: EdgeInsets.only(left: 5, top: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    SizedBox(width: 2.0),
                    Text(
                      likes.toString(),
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12.0,
                          color: Colors.grey),
                    ),
                    SizedBox(width: 10.0),
                    Icon(
                      Icons.chat_bubble,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    SizedBox(width: 2.0),
                    Text(
                      commentCount.toString(),
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12.0,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 110.0,
            top: 102.0,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.amber),
              child: Center(
                child: Icon(Icons.shopping_cart, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

//class RoundIconButton extends StatelessWidget {
//  RoundIconButton({@required this.icon, @required this.onPressed});
//
//  final IconData icon;
//  final Function onPressed;
//
//  @override
//  Widget build(BuildContext context) {
//    return RawMaterialButton(
//      child: Icon(icon),
//      onPressed: onPressed,
//      constraints: BoxConstraints.tightFor(
//        width: 25.0,
//        height: 25.0,
//      ),
//      shape: CircleBorder(),
//      fillColor: Colors.white54,
//    );
//  }
//}

//
//_listItems
//    .map(
//(item) => Card(
//color: kPinkColor,
//elevation: 10,
//child: Column(
//children: [
//Container(
//padding: EdgeInsets.all(5.0),
//height: 125,
//width: 160,
//decoration: BoxDecoration(
//borderRadius: BorderRadius.circular(5.0),
//image: DecorationImage(
//image: AssetImage(item),
//fit: BoxFit.cover,
//),
//),
//),
//Row(
//crossAxisAlignment: CrossAxisAlignment.end,
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//Container(
//alignment: Alignment.topLeft,
//child: Text(
//'500 Rs',
//style: TextStyle(
//fontSize: 18,
//),
//),
//),
//RoundIconButton(
//icon: Icons.add,
//onPressed: () {
////                  setState(() {
////
////                  });
//},
//),
//SizedBox(
//width: 10,
//),
//RoundIconButton(
//icon: FontAwesomeIcons.minus,
//onPressed: () {
////                  setState(() {
////                    age--;
////                  });
//},
//),
//],
//),
//],
//),
//),
//)
//.toList(),
