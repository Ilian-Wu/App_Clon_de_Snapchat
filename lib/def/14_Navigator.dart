// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_snapchat/pages/images_page.dart';

import '../pages/chat_page.dart';
import '../widgets/miAppBar.dart';
import '../widgets/cronometro.dart';
import '../widgets/avatar.dart';
import '../widgets/bottom_menu3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'home';
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _activo = false;
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("MiApp", style: TextStyle(color: Colors.black)),
        elevation: 1,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(icon: Icon(Icons.send), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ), */
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //eje Y - vertical
              crossAxisAlignment:
                  CrossAxisAlignment.center, //eje X - horizontal
              children: [
                MiAppBar(
                  iconoIzquierda:
                      "https://www.svgrepo.com/show/96890/camera.svg",
                  iconoDerecha:
                      "https://www.svgrepo.com/show/39559/message.svg",
                  onClickDerecha: () {
                    final miRuta = MaterialPageRoute(
                        builder: (context) => ChatPage(
                              nombreUsuario: 'Angel',
                            ));
                    Navigator.push(context, miRuta);
                  },
                  onClickIzquierda: () {
                    /* Navigator.pushNamed(context, 'image'); */
                    //es necesario definir las rutas en main.dart
                    Navigator.pushNamed(context, ImagePage.routeName,
                        arguments: ImagePageArgs(
                            nombreUsuario: "Angel", activo: true));
                  },
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Avatar(),
                      SizedBox(height: 20),
                      Text(
                        "Cronómetro",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      CupertinoButton(
                        child: Text("Ir a ChatPage"),
                        color: Colors.green,
                        onPressed: () {
                          final miRuta = MaterialPageRoute(
                              builder: (context) => ChatPage(
                                    nombreUsuario: 'Angel',
                                  ));
                          Navigator.push(context, miRuta);
                        },
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
      bottomNavigationBar: BottomMenu(
        items: [
          BottomMenuItem(rutaIcono: 'assets/icons/menu.svg', texto: "Home"),
          BottomMenuItem(rutaIcono: 'assets/icons/menu2.svg', texto: "Perfil"),
          BottomMenuItem(
              rutaIcono: 'assets/icons/menu3.svg', texto: "Opciones"),
        ],
      ),
    );
  }
}
