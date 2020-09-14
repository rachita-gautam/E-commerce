import 'package:e_commerce/common_widget/app_bar.dart';
import 'package:e_commerce/common_widget/best_cakes.dart';
import 'package:e_commerce/common_widget/best_combo.dart';
import 'package:e_commerce/common_widget/bottomNavBar.dart';
import 'package:e_commerce/common_widget/categories.dart';
import 'package:e_commerce/common_widget/promo_slider.dart';
import 'package:e_commerce/icons/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/common_widget/search_button.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(Text('Let')),
      drawer: DrawerWidget(),
      body: ListView(
        children: [
          SearchWidget(),
          Categories(),
          PromoSlider(),
          SizedBox(
            height: 5,
          ),
          BestCakes(),
          SizedBox(
            height: 5,
          ),
          BestCombos(),
        ],
      ),
      bottomNavigationBar: Buttons(),
    );
  }
}

//class Options extends StatelessWidget {
//  Options(this.icon, this.colour);
//  final icon;
//  final Color colour;
//  @override
//  Widget build(BuildContext context) {
//    return Icon(
//      icon,
//      color: colour,
//      size: 50,
//    );
//  }
////}
