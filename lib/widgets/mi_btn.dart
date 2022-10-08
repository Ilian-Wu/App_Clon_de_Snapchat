// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class MiBtn extends StatelessWidget {
  final String label;
  final Color colorFondo, colorTexto;
  final VoidCallback onPressed;

  const MiBtn(
      {super.key,
      required this.label,
      this.colorFondo = Colors.blue,
      this.colorTexto = Colors.white,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        child: Text(
          label,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      style: ElevatedButton.styleFrom(
        primary: colorFondo, //Colors.amber, //color del fondo
        //foregroundColor: colorTexto, //Colors.black, //color del texto
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: onPressed,
    );
  }
}
