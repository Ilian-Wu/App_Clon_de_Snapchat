// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_snapchat/pages/lista_page.dart';
import 'package:app_snapchat/pages/page3_perfil.dart';
import 'package:app_snapchat/pages/page3_perfil1.dart';
import 'package:app_snapchat/pages/teclado_page.dart';

import '../pages/images_page.dart';
import '../widgets/mi_btn.dart';
import '../pages/chat_page.dart';
import '../widgets/miAppBar.dart';

import '../widgets/avatar.dart';
import '../widgets/bottom_menu3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class page2_home extends StatefulWidget {
  //static final routeName = 'home';
  @override
  State<StatefulWidget> createState() => page2_homeState();
}

class page2_homeState extends State<page2_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        iconTheme: IconThemeData(color: Colors.black),
        //title: Text("MiApp", style: TextStyle(color: Colors.black)),
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              final miRuta = MaterialPageRoute(
                builder: (context) => page_perfil1(),
              );
              Navigator.push(context, miRuta);
            }),
        actions: [
          IconButton(icon: Icon(Icons.send), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          alignment: Alignment.center,
          //  width: double.infinity,
          // height: double.infinity,
          color: Colors.black,
          child: Image.asset(
            'assets/icons/foto4.jpg',
            //height: 900,
            width: 400,
          ),
        ),
      )),
      bottomNavigationBar: BottomMenu(
        items: [
          BottomMenuItem(rutaIcono: 'assets/icons/mapa.svg', texto: "Mapa"),
          BottomMenuItem(rutaIcono: 'assets/icons/chat.svg', texto: "Chat"),
          BottomMenuItem(
              rutaIcono: 'assets/icons/lentes.svg', texto: "Mas Lentes"),
          BottomMenuItem(
              rutaIcono: 'assets/icons/usuarios.svg', texto: "Historias"),
          BottomMenuItem(
              rutaIcono: 'assets/icons/play.svg', texto: "Spotlight"),
        ],
      ),
    );
  }
}
