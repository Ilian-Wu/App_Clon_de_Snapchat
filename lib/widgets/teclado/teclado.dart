import 'package:app_snapchat/pages/teclado_page.dart';
import 'package:app_snapchat/pages/teclado_pageenmayuscula.dart';
import 'package:app_snapchat/widgets/teclado/mayuscula.dart';

import '../teclado/backspace.dart';
import '../teclado/alfabetico.dart';
import 'package:flutter/material.dart';

class TecladoPersonalizado extends StatefulWidget {
  final ValueSetter<String> onTextInput;
  final VoidCallback onBackspace;

  const TecladoPersonalizado(
      {super.key, required this.onTextInput, required this.onBackspace});

  void _textInputHandler(String texto) => onTextInput.call(texto);
  void _nada() {}
  void _backspaceHandler() => onBackspace.call();

  @override
  State<TecladoPersonalizado> createState() => _TecladoPersonalizadoMayuspage();
}

class _TecladoPersonalizadoMayuspage extends State<TecladoPersonalizado> {
  bool _mayusculas = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.grey.shade300,
      child: Column(
        children: [
          generarFilaUno(),
          generarFilaDos(),
          generarFilaTres(),
          generarFilaCuatro(),
          generarFilaCinco(),
        ],
      ),
    );
  }

  generarFilaUno() {
    return Expanded(
      child: Row(
        children: [
          TecladoAlfabetico(texto: '1', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '2', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '3', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '4', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '5', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '6', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '7', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '8', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '9', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '0', onTextInput: widget._textInputHandler),
        ],
      ),
    );
  }

  generarFilaDos() {
    return Expanded(
      child: Row(
        children: [
          TecladoAlfabetico(texto: 'q', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'w', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'e', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'r', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 't', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'y', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'u', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'i', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'o', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'p', onTextInput: widget._textInputHandler),
        ],
      ),
    );
  }

  generarFilaTres() {
    return Expanded(
      child: Row(
        children: [
          TecladoAlfabetico(texto: 'a', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 's', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'd', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'f', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'g', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'h', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'j', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'k', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'l', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'ñ', onTextInput: widget._textInputHandler),
        ],
      ),
    );
  }

  generarFilaCuatro() {
    return Expanded(
      child: Row(
        children: [
          TecladoAlfabetico(texto: 'z', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'x', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'c', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'v', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'b', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'n', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'm', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: ',', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '.', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: '?', onTextInput: widget._textInputHandler),
        ],
      ),
    );
  }

  generarFilaCinco() {
    return Expanded(
      child: Row(
        children: [
          //Reemplazar este backspace por la tecla de Mayusculas/Minusculas
          // TeclaMayuscula(),
          //reemplazar
          IconButton(
            onPressed: () {
              /* 
              final miRuta = MaterialPageRoute(
                  builder: (context) => TecladoPageMayus(
                      /*       onTextInput: (miTexto) => () {},
                          onBackspace: () => () {}, */
                      ));

              Navigator.push(context, miRuta);
              setState(() {
                //  _readOnly = !_readOnly;
                _mayusculas = !_mayusculas;
              });
             */
            },
            icon: Icon(Icons.keyboard_double_arrow_up, size: 35),
          ),
//

          TecladoAlfabetico(
              texto: ' ',
              flex: 3,
              onTextInput: widget._textInputHandler), //barra espaciadora
          TeclaBackspace(onBackspace: widget._backspaceHandler),
        ],
      ),
    );
  }
}
