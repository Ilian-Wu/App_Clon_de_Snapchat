// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi App Flutter"),
      ),
      body: Center(
        child: Container(
          width: 300,
          //width: double.infinity,
          height: 300,
          //color: Colors.blue,
          // ignore: sort_child_properties_last
          child: Center(
            child: Text(
              "Circulo",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.amber,
            //borderRadius: BorderRadius.circular(20),
            shape: BoxShape.circle,
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                color: Colors.black87,
                blurRadius: 10,
                offset: Offset(10, 5),
              ),
              BoxShadow(
                color: Colors.deepPurple,
                blurRadius: 10,
                offset: Offset(-10, 5),
              ),
            ],
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
