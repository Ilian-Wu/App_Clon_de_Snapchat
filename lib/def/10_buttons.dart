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
                Text("Bienvenido!"),
                Text(
                  "Usuario del Sistema",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                TextButton(
                  /* onPressed: () {
                    print('subiendo....');
                  }, */
                  onPressed: () => print('boton material design....'),
                  //onPressed: null, //deshabilita el boton
                  child: Text('Boton Material Design'),
                  style: TextButton.styleFrom(
                      primary: Colors.white, backgroundColor: Colors.blue),
                ),
                CupertinoButton(
                  child: Text('Boton Cupertino'),
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  onPressed: () => print('boton cupertino....'),
                ),
              ]),
        ),
      ),
    );
  }
}
