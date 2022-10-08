// ignore_for_file: prefer_const_constructors

import 'package:app_snapchat/pages/page4_ajustes.dart';
import 'package:app_snapchat/utils/data2.dart';
//import 'package:app_snapchat/widgets/bottom_menu.dart';
import 'package:flutter/material.dart';
import '../widgets/miAppBar.dart';
import '../utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/bottom_menu2.dart';

class page_perfil extends StatefulWidget {
  static const routeName = 'lista';
  const page_perfil({super.key});

  @override
  State<page_perfil> createState() => page_perfilState();
}

class page_perfilState extends State<page_perfil> {
  List<String> _datos = data;
  //trae los datos importados data.dart
  //List<String> _datos = []; //lista vacia
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        //title: Text("MiApp", style: TextStyle(color: Colors.black)),
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 145,
                    width: double.infinity,
                    child: Scaffold(
                      body: Text(
                        "Compartir el vinculo a Mi perfil",
                        style: TextStyle(
                          shadows: [
                            // ignore: prefer_const_constructors
                            Shadow(
                              color: Colors.black,
                              blurRadius: 0,
                              offset: Offset(1, 0),
                            )
                          ],
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      bottomNavigationBar: BottomMenu(
                        items: [
                          BottomMenuItem(
                              rutaIcono: 'assets/icons/copy.svg',
                              texto: "Copiar"),
                          BottomMenuItem(
                              rutaIcono: 'assets/icons/wasap1.svg',
                              texto: "WhatsApp"),
                          BottomMenuItem(
                              rutaIcono: 'assets/icons/instagram.svg',
                              texto: "Instagram"),
                          BottomMenuItem(
                              rutaIcono: 'assets/icons/sms.svg',
                              texto: "Mensajes"),
                          BottomMenuItem(
                              rutaIcono: 'assets/icons/face.svg',
                              texto: "Facebook"),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                final miRuta = MaterialPageRoute(
                  builder: (context) => page_ajustes(),
                );
                Navigator.push(context, miRuta);
              }),
        ],
      ),
      //  backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 232,
                color: Colors.white,
                child: Image.asset(
                  'assets/icons/fondo.png',
                  width: double.infinity,
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 465,
                  color: Colors.white12,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, int pos) {
                            //final String item = data[pos];
                            final String item = _datos[pos];

                            return ListTile(
                              title: Text(item, style: TextStyle(fontSize: 18)),
                              // subtitle: Text(DateTime.now().toString()),
                              leading: Icon(Icons.favorite),
                              trailing: Icon(Icons.chevron_right),
                              onTap: () {},
                              onLongPress: () {},
                            );
                          },
                          itemCount: data.length,
                        ),
                      ),
                      /////////////////////////
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
