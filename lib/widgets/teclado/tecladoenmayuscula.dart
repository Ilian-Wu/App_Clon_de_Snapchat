import 'package:app_snapchat/pages/teclado_page.dart';
import 'package:app_snapchat/pages/teclado_pageenmayuscula.dart';
import 'package:app_snapchat/widgets/teclado/mayuscula.dart';

import '../teclado/backspace.dart';
import '../teclado/alfabetico.dart';
import 'package:flutter/material.dart';

class TecladoPersonalizadoMayus extends StatefulWidget {
  final ValueSetter<String> onTextInput;
  final VoidCallback onBackspace;

  const TecladoPersonalizadoMayus(
      {super.key, required this.onTextInput, required this.onBackspace});

  void _textInputHandler(String texto) => onTextInput.call(texto);
  void _nada() {}
  void _backspaceHandler() => onBackspace.call();

  @override
  State<TecladoPersonalizadoMayus> createState() =>
      _TecladoPersonalizadoMayuspage();
}

class _TecladoPersonalizadoMayuspage extends State<TecladoPersonalizadoMayus> {
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
          TecladoAlfabetico(texto: 'Q', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'W', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'E', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'R', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'T', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'Y', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'U', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'I', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'O', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'P', onTextInput: widget._textInputHandler),
        ],
      ),
    );
  }

  generarFilaTres() {
    return Expanded(
      child: Row(
        children: [
          TecladoAlfabetico(texto: 'A', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'S', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'D', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'F', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'G', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'H', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'J', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'K', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'L', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'Ñ', onTextInput: widget._textInputHandler),
        ],
      ),
    );
  }

  generarFilaCuatro() {
    return Expanded(
      child: Row(
        children: [
          TecladoAlfabetico(texto: 'Z', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'X', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'C', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'V', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'B', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'N', onTextInput: widget._textInputHandler),
          TecladoAlfabetico(texto: 'M', onTextInput: widget._textInputHandler),
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
                  builder: (context) => TecladoPage(
                      /*       onTextInput: (miTexto) => () {},
                          onBackspace: () => () {}, */
                      ));

              Navigator.push(context, miRuta);

              setState(() {
                //  _readOnly = !_readOnly;
                _mayusculas = !_mayusculas;
              }); */
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
