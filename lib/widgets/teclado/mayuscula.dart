import 'package:app_snapchat/pages/teclado_page.dart';
import 'package:app_snapchat/pages/teclado_pageenmayuscula.dart';
import 'package:app_snapchat/widgets/teclado/backspace.dart';
import 'package:app_snapchat/widgets/teclado/tecladoenmayuscula.dart';
import 'package:flutter/material.dart';

class TeclaMayuscula extends StatefulWidget {
  final int flex;

  const TeclaMayuscula({
    super.key,
    this.flex = 1,
  });

  @override
  State<TeclaMayuscula> createState() => _TeclaMayusculapage();
}

class _TeclaMayusculapage extends State<TeclaMayuscula> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Material(
          color: const Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: IconButton(
              icon: Icon(Icons.keyboard_double_arrow_up, size: 30),
              onPressed: () {
                final miRuta = MaterialPageRoute(
                    builder: (context) => TecladoPageMayus(
                        /*       onTextInput: (miTexto) => () {},
                          onBackspace: () => () {}, */
                        ));
                Navigator.push(context, miRuta);
              },
            ),
          ),
        ),
      ),
    );
  }
}

//fin del stefulwidget
/* 

class TeclaMayuscula extends StatelessWidget {
  final int flex;

  const TeclaMayuscula({
    super.key,
    this.flex = 1,
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
              icon: Icon(Icons.arrow_back_ios_new, size: 30),
              onPressed: () {
                final miRuta = MaterialPageRoute(
                    builder: (context) => TecladoPageMayus(
                        /*       onTextInput: (miTexto) => () {},
                          onBackspace: () => () {}, */
                        ));
                Navigator.push(context, miRuta);
              },
            ),
          ),
        ),
      ),
    );
  }
} */
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