import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:resturant/screen/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => RestaurantHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Lottie.asset('lib/assets/Animation - 1732539464671.json'),
              Text(
                'Own Eatery',
                style: TextStyle(fontSize: 24, color: Colors.orange),
              ),
            ],
          ),
        ),
        // child: Image.asset(
        //   'lib/assets/sherlock-holmes-detective-illustration-english-260nw-530854246.jpg', // Path relative to your pubspec.yaml file
        //   width: 60, // Set the width of the SVG
        //   height: 60, // Set the height of the SVG
        // ),
      ),
    );
  }
}
