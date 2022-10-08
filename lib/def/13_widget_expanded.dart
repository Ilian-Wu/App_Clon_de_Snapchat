// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../widgets/cronometro.dart';
import '../widgets/avatar.dart';
import '../widgets/bottom_menu2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _activo = false;
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Cronómetro",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                //Cronometro
                _activo == true //condicion
                    ? Cronometro(tiempoIni: 10, fontSize: _fontSize)
                    : Container(),
                //Cronometro fin
                SizedBox(height: 10),
                CupertinoButton(
                  child: Text("Activo: $_activo"),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      _activo = !_activo;
                    });
                  },
                ),
                SizedBox(height: 10),
                CupertinoButton(
                  child: Text("Incrementar fontSize"),
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      _fontSize++;
                    });
                  },
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child:
                          Container(width: 50, height: 50, color: Colors.red),
                      flex: 3,
                    ),
                    Expanded(
                      child:
                          Container(width: 50, height: 50, color: Colors.green),
                      flex: 2,
                    ),
                    Expanded(
                      child:
                          Container(width: 50, height: 50, color: Colors.blue),
                    ),
                  ],
                ),
              ]),
        ),
      ),
      bottomNavigationBar: BottomMenu(
        items: [
          BottomMenuItem(rutaIcono: 'assets/icons/menu.svg', texto: "Home"),
          BottomMenuItem(rutaIcono: 'assets/icons/menu2.svg', texto: "Perfil"),
          BottomMenuItem(
              rutaIcono: 'assets/icons/menu3.svg', texto: "Opciones"),
        ],
      ),
    );
  }
}
