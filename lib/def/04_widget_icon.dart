// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/contenedor_circulo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi App Flutter"),
      ),
      body: Center(
        child: ContenedorCirculo(
          width: 100,
          height: 100,
          child: Icon(
            CupertinoIcons.alarm,
            size: 50,
            color: Colors.red,
          ),
          /* SvgPicture.asset(
            'assets/icons/menu.svg',
            width: 50,
            height: 50,
            color: Colors.red,
          ), */
          /* Icon(
            Icons.phone_android,
            size: 50,
            color: Colors.red,
          ), */
        ),
      ),
    );
  }
}
