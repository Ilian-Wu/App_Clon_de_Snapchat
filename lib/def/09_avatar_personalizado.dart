// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../widgets/avatar.dart';
import '../widgets/bottom_menu2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/contenedor_circulo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        items: [
          BottomMenuItem(rutaIcono: 'assets/icons/menu.svg', texto: "Home"),
          BottomMenuItem(rutaIcono: 'assets/icons/menu2.svg', texto: "Perfil"),
          BottomMenuItem(
              rutaIcono: 'assets/icons/menu3.svg', texto: "Opciones"),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //eje Y - vertical
              crossAxisAlignment:
                  CrossAxisAlignment.center, //eje X - horizontal
              children: [
                Avatar(),
                SizedBox(height: 20),
                Text(
                  "Bienvenido!",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Usuario del Sistema",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, //eje X - horizontal
                  mainAxisSize: MainAxisSize
                      .min, //ajusta el espacio que ocupan los widgets hijos
                  //crossAxisAlignment: CrossAxisAlignment.center, //eje Y - vertical
                  children: [
                    ContenedorCirculo(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.play_arrow),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ContenedorCirculo(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.stop),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
