import 'package:flutter/material.dart';

class TeclaBackspace extends StatelessWidget {
  final int flex;
  final VoidCallback onBackspace;

  const TeclaBackspace({
    super.key,
    this.flex = 1,
    required this.onBackspace,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Material(
          color: const Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: IconButton(
              icon: Icon(Icons.backspace_rounded, size: 30),
              onPressed: () => onBackspace.call(),
            ),
          ),
        ),
      ),
    );
  }
}
/* 
//para el icono
class Teclaship extends StatelessWidget {
  final int flex;
  final VoidCallback onBackspace;

  const Teclaship({
    super.key,
    this.flex = 1,
    required this.onBackspace,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Material(
          color: const Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: IconButton(
              icon: Icon(Icons.arrow_upward, size: 30),
              onPressed: () => onBackspace.call(),
            ),
          ),
        ),
      ),
    );
  }
}
 */