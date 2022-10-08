// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'dart:async';
import '../widgets/contenedor_circulo2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class micontainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => micontainersate();
}

class micontainersate extends State<micontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 300,
      height: 300,
      color: Colors.blue,
      child: Column(
        children: [
          SizedBox(height: 20),
          //boton q hara aparecer el container
          Icon(
            Icons.phone_android,
            size: 100,
            color: Colors.red,
          ),
          SizedBox(height: 20),
          CupertinoButton(
            child: Text('Boton Cupertino'),
            color: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 120,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Column(
                        /* children: [
                          Text('Modal BottomSheet'),
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('Cerrar ModalBottomSheet'),
                          ),
                        ], */
                        children: [
                          ListTile(
                            leading: Icon(Icons.check),
                            title: Text('Aceptar'),
                          ),
                          ListTile(
                            leading: Icon(Icons.close),
                            title: Text('Cerrar'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
