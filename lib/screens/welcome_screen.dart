import 'package:e_commerce/others/const.dart';
import 'package:e_commerce/screens/login_screen.dart';
import 'package:e_commerce/screens/main_screen.dart';
import 'package:e_commerce/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/others/roundButton.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WelcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = ColorTween(begin: kPinkColor.withOpacity(0.4), end: kPinkColor)
        .animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset(
                      'images/logoIcon.png',
                    ),
                    height: 80.0,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                TyperAnimatedTextKit(
                  text: ["Let's Bake"],
                  textStyle: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ],
            ),
            RoundButton(
              title: 'Register',
              colour: kVioletColor.withOpacity(0.5),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
            ),
            RoundButton(
              title: 'LogIn',
              colour: kVioletColor.withOpacity(.5),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            // RoundButton(
            //   title: 'SKIP >>',
            //   colour: kPinkColor,
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => MainScreen()),
            //     );
            //   },
            // ),
            // // Row(
            //   crossAxisAlignment: CrossAxisAlignment.end,
            //   children: [
            //     Spacer(),
            //
            //   ],
            // )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          child: Text(
            'SKIP >>',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
          ),
          color: kPinkColor,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
      ),
    );
  }
}
