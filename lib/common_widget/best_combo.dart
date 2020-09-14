import 'package:flutter/material.dart';

class BestCombos extends StatelessWidget {
  final List<String> _listItems = [
    'images/cookies.jpg',
    'images/cake.jpg',
    'images/mug.jpg',
    'images/cupcombo.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Color(0xffffbdf7).withOpacity(.5),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
//          image: DecorationImage(
//            image: AssetImage('images/background.jpg'),
//            fit: BoxFit.cover,
////          colorFilter: ColorFilter.mode(Colors.pinkAccent, ),
//          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Exclusive Combos',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                  color: Color(0XFF2e1763),
                ),
              ),
              SizedBox(
                height: 15.0,
                width: 250,
                child: Divider(
                  color: Color(0XFF2e1763),
                  thickness: 2,
                ),
              ),
              Container(
                height: 350,
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(20.0),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: _listItems
                      .map((item) => Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover,
                              )),
                            ),
                          ))
                      .toList(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 15),
                child: FlatButton(
                  autofocus: true,
                  color: Colors.white,
                  onPressed: () {},
                  child: Text(
                    'Shop Now >>',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      color: Color(0XFF2e1763),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
