import 'package:app_snapchat/widgets/teclado/mayuscula.dart';
import 'package:app_snapchat/widgets/teclado/tecladoenmayuscula.dart';
import '../widgets/teclado/teclado.dart';
import 'package:flutter/material.dart';
import '../widgets/miAppBar.dart';

class TecladoPage extends StatefulWidget {
  static const routeName = 'teclado';
  const TecladoPage({super.key});

  @override
  State<TecladoPage> createState() => _TecladoPageState();
}

class _TecladoPageState extends State<TecladoPage> {
  final TextEditingController _controller = TextEditingController();
  bool _readOnly = true;
  bool _mayusculas = false; //para el cambio de teclado Mayusculas/minusculas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              //INICIO DEL APPBAR
              MiAppBar(
                iconoIzquierda:
                    "https://www.svgrepo.com/show/218169/left-arrow-back.svg",
                iconoDerecha:
                    "https://www.svgrepo.com/show/311328/text-bullet-list-add.svg",
                onClickIzquierda: () => Navigator.pop(context),
                onClickDerecha: () {},
              ),
              //FIN DEL APPBAR

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      style: TextStyle(fontSize: 26),
                      autofocus: true,
                      showCursor:
                          true, //PARA Q PAREZCA LA LINEA PARPADEANTE DONDE SE ECRIBE
                      readOnly:
                          _readOnly, //para q no aparaca el teclado del sistema automaticamente
                    ),
                    //este icono toma el readonly de arriba para poder activar y descativar
                    //el teclado del sistema
                    //INICIO DEL BOTON
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _readOnly = !_readOnly;
                        });
                      },
                      icon: Icon(Icons.keyboard, size: 35),
                    ),
                    //FIN DEL BOTON
                    SizedBox(height: 20),
                    //AQUI LLAMAMOS A LA CLASE PARA MOSTRAR EL TECLADO
                    /* TecladoPersonalizado(
                      onTextInput: (miTexto) => _insertarTexto(miTexto),
                      onBackspace: () => _borrarTexto(),
                    ), */

                    _cambiarTeclado(),

                    IconButton(
                      onPressed: () {
                        setState(() {
                          //  _readOnly = !_readOnly;
                          _mayusculas = !_mayusculas;
                        });
                      },
                      icon: Icon(Icons.keyboard_arrow_up, size: 30),
                    ),
                  ],
                ),
              ),
              //),
            ],
          ),
        ),
      ),
    );
  }

  _insertarTexto(String miTexto) {
    final texto = _controller.text;
    final textoSeleccionado = _controller.selection;
    final nuevoTexto = texto.replaceRange(
        textoSeleccionado.start, textoSeleccionado.end, miTexto);
    final miTextoLength = miTexto.length;

    _controller.text = nuevoTexto;
    _controller.selection = textoSeleccionado.copyWith(
      baseOffset: textoSeleccionado.start + miTextoLength,
      extentOffset: textoSeleccionado.start + miTextoLength,
    );
  }

  _borrarTexto() {
    final texto = _controller.text;
    final textoSeleccionado = _controller.selection;
    final textoSelccionadoLength =
        textoSeleccionado.start - textoSeleccionado.end;

    //si hay algo seleccionado
    if (textoSelccionadoLength > 0) {
      final nuevotexto = texto.replaceRange(
          textoSeleccionado.start, textoSeleccionado.end, '');
      _controller.text = nuevotexto;
      return;
    }

    //si el cursor esta al inicio
    if (textoSeleccionado.start == 0) {
      return;
    }
    //
    final caracterPrevio = texto.codeUnitAt(textoSeleccionado.start - 1);
    final offset = _isUtf16Surrogate(caracterPrevio) ? 2 : 1; //desplazamiento
    final nuevoInicio = textoSeleccionado.start - offset;
    final nuevoFin = textoSeleccionado.start;
    final nuevoTexto = texto.replaceRange(nuevoInicio, nuevoFin, '');
    _controller.text = nuevoTexto;
    _controller.selection = textoSeleccionado.copyWith(
      baseOffset: nuevoInicio,
      extentOffset: nuevoInicio,
    );
  }

  bool _isUtf16Surrogate(int value) {
    //sustituto
    return value & 0xF800 == 0xD800; //63488 ==
  }

//Referencia para tecla Mayusculas/minusculas
  Widget _cambiarTeclado() {
    if (_mayusculas) {
      return TecladoPersonalizadoMayus(
        onTextInput: (miTexto) => _insertarTexto(miTexto),
        onBackspace: () => _borrarTexto(),
      );
    } else {
      return TecladoPersonalizado(
        onTextInput: (miTexto) => _insertarTexto(miTexto),
        onBackspace: () => _borrarTexto(),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
