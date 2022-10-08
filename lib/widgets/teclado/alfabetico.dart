import 'package:flutter/material.dart';

class TecladoAlfabetico extends StatelessWidget {
  final String texto;
  final int flex;
  final ValueSetter<String> onTextInput;

  const TecladoAlfabetico(
      {super.key,
      required this.texto,
      this.flex = 1,
      required this.onTextInput});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //ESTO ES PARA HACER EL DISEÑO DE LA TECLITA DONDE IRA LA LETRA
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Material(
          color: const Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(10),
          //HASTA QUI ES PURO DISEÑO DE LA TECLA
          //ESTO PERMITE Q SE PUEDA HACER CLIP EN EL CUADRITO
          child: InkWell(
            onTap: () => onTextInput.call(
                texto), //ESTO HACE QUE CAPTURE EL VALOR AL PRESIONAR EL CUADRITO
            child: Center(
              child: Text(
                  texto, //ESTO ES PARA QUE APAREZCA LA LETRA EN EL CUADRO
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ),
          ),
        ),
      ),
    );
  }
}
