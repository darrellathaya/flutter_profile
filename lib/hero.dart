import 'package:flutter/material.dart';
import 'home.dart';

class HeroPage extends StatelessWidget {
  static String tag = 'hero-page';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // Navigate to HomePage on tap
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white, 
                Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: Text(
              'Halo!',
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: [
                      Colors.lightBlueAccent,
                      Colors.black,
                    ]
                  ).createShader(
                    Rect.fromLTWH(250, 0, 250, 50),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
