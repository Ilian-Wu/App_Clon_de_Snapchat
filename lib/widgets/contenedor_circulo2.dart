// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class ContenedorCirculo extends StatelessWidget {
  final Widget child;
  final double size;

  const ContenedorCirculo({super.key, required this.size, required this.child})
      : assert(size >= 30);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      child: Center(
        child: this.child,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 8,
            offset: Offset(5, 5),
          ),
        ],
      ),
      alignment: Alignment.center,
    );
  }
}
