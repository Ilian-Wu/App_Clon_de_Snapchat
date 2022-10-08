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
                  margin: EdgeInsets.symmetric(vertical: 70),
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, //eje X - horizontal
                  mainAxisSize: MainAxisSize
                      .min, //ajusta el espacio que ocupan los widgets hijos
                  //crossAxisAlignment: CrossAxisAlignment.center, //eje Y - vertical
                  children: [
                    Text("500 mil Likes"),
                    SizedBox(
                      width: 20,
                    ),
                    ContenedorCirculo(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ContenedorCirculo(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.play_arrow),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
