// ignore_for_file: prefer_const_constructors

import 'package:app_snapchat/pages/login1.dart';
import 'package:app_snapchat/pages/login2.dart';

import '../widgets/miAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class probando extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => probandostate();
}

class probandostate extends State<probando> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MiAppBar(
                  iconoIzquierda:
                      "https://www.svgrepo.com/show/96890/camera.svg",
                  onClickIzquierda: () {
                    Navigator.pop(context);
                  },
                  iconoDerecha:
                      "https://www.svgrepo.com/show/39559/message.svg"),
              /* MiAppBar(
                iconoIzquierda:
                    "https://www.svgrepo.com/show/218169/left-arrow-back.svg",
                onClickIzquierda: () => Navigator.pop(context),
                iconoDerecha: "https://www.svgrepo.com/show/39559/message.svg",
              ), */
              SizedBox(height: 150),
              CupertinoButton(
                child: Text('ME LLEVA AL LOGIN 1'),
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                onPressed: () {
                  final miRuta =
                      MaterialPageRoute(builder: (context) => login1());
                  Navigator.push(context, miRuta);
                },
              ),
              SizedBox(height: 10),
              CupertinoButton(
                child: Text('ME LLEVA AL LOGIN 2'),
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                onPressed: () {
                  final miRuta =
                      MaterialPageRoute(builder: (context) => login2());
                  Navigator.push(context, miRuta);
                },
              ),
              SizedBox(height: 30),
              Icon(
                Icons.home,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
