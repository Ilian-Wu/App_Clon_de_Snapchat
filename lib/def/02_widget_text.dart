import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi App Flutter"),
      ),
      body: Center(
        child: Text(
          "Soy un texto un poco mas largo!",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red.withOpacity(0.8),
            fontSize: 45,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
            // ignore: prefer_const_literals_to_create_immutables
            shadows: [
              // ignore: prefer_const_constructors
              Shadow(
                color: Colors.black,
                blurRadius: 5,
                offset: Offset(5, -3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
