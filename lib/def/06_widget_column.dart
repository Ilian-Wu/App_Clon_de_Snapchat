// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/contenedor_circulo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //eje Y - vertical
              //crossAxisAlignment: CrossAxisAlignment.center, //eje X - horizontal
              children: [
                Text(
                  "Bienvenido!",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Usuario del Sistema",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 5,
                  width: 100,
                  color: Colors.grey,
                  //margin: EdgeInsets.all(50),
                  //margin: EdgeInsets.only(right: 60),
                  //margin: EdgeInsets.symmetric(vertical: 30),
                  margin: EdgeInsets.symmetric(vertical: 70),
                ),
              ]),
        ),
      ),
    );
  }
}
