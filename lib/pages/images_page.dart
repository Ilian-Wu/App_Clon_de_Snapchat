// ignore_for_file: prefer_const_constructors

import '../widgets/miAppBar.dart';
import 'package:flutter/material.dart';

//Clase para pasar argumentos a una ruta con nombre
class ImagePageArgs {
  final String nombreUsuario;
  final bool activo;

  ImagePageArgs({required this.nombreUsuario, required this.activo});
}

class ImagePage extends StatefulWidget {
  static final routeName = 'image';

  ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    //ModalRoute bloquea las interacciones con
    //otras rutas previas en el Navigator
    final ImagePageArgs args =
        ModalRoute.of(context)?.settings.arguments as ImagePageArgs; //cast

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              MiAppBar(
                iconoIzquierda:
                    "https://www.svgrepo.com/show/218169/left-arrow-back.svg",
                iconoDerecha: "https://www.svgrepo.com/show/39559/message.svg",
                onClickIzquierda: () => Navigator.pop(context),
              ),
              Expanded(
                child: Center(
                  /* child: Text(
                    "Bienvenido, ImagePage",
                    style: TextStyle(fontSize: 25),
                  ), */
                  child: Text(
                    'Usuario: ${args.nombreUsuario}, activo? : ${args.activo}',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
