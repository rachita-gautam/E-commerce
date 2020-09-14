import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class PromoSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 2),
      child: Container(
        decoration: BoxDecoration(color: Color(0xffffbdf7).withOpacity(.5)),
        height: 150,
        width: double.infinity,
        child: Carousel(
          images: [
//            Image.asset(
//              'images/anniversary.jpg',
//              height: 150,
//              width: double.infinity,
//            ),
            Image.asset(
              'images/10%off.jpg',
              height: 150,
              width: double.infinity,
            ),
            Image.asset(
              'images/cupcakes.jpg',
              height: 150,
              width: double.infinity,
            ),
          ],
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Colors.purple,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.black54.withOpacity(0.2),
          borderRadius: true,
          radius: Radius.circular(20),
          moveIndicatorFromBottom: 180.0,
          noRadiusForIndicator: true,
        ),
      ),
    );
  }
}
