// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_snapchat/widgets/micontainer.dart';

import '../widgets/cronometro.dart';
import '../widgets/avatar.dart';
import '../widgets/bottom_menu2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class mipractica extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => mipracticapagestate();
}

class mipracticapagestate extends State<mipractica> {
  bool _activo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mi titulo"),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white24,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //eje Y - vertical
              crossAxisAlignment:
                  CrossAxisAlignment.center, //eje X - horizontal

              children: [
                Container(
                  child: Icon(
                    Icons.phone_android,
                    size: 100,
                    color: Colors.black,
                  ),
                ),
//aqui esta el q aparecera
                SizedBox(height: 20),
                //boton

                _activo == true //condicion
                    ? micontainer()
                    : Container(),
//este es mi boton
                CupertinoButton(
                  child: Text("Activo: $_activo"),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      _activo = !_activo;
                    });
                  },
                ),

                SizedBox(height: 20),
              ]),
        ),
      ),
    );
  }
}
