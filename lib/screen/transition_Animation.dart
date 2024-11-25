import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order Screen")),
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
              height: 100,
              child: Transform.scale(
                scale:
                    1.5, // Set your desired scale factor here (1.0 is the default size)
                child:
                    Lottie.asset('lib/assets/Animation - 1732539464671.json'),
              ),
            ),
          ),
          Text(
            'Connecting',
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
