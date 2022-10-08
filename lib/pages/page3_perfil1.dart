// ignore_for_file: prefer_const_constructors

import 'package:app_snapchat/pages/page4_ajustes.dart';
import 'package:app_snapchat/pages/page4_ajustes1.dart';
import 'package:app_snapchat/utils/data2.dart';
//import 'package:app_snapchat/widgets/bottom_menu.dart';
import 'package:flutter/material.dart';
import '../widgets/miAppBar.dart';
import '../utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/bottom_menu2.dart';

class page_perfil1 extends StatefulWidget {
  static const routeName = 'lista';
  const page_perfil1({super.key});

  @override
  State<page_perfil1> createState() => page_perfil1State();
}

class page_perfil1State extends State<page_perfil1> {
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
              icon: Icon(Icons.arrow_back_ios),
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
                    builder: (context) => page_ajustes1(),
                  );
                  Navigator.push(context, miRuta);
                }),
          ],
        ),
        ////////////////
        //FIN DEL APPBAR
        ////////////////
        body: SingleChildScrollView(
          child: SafeArea(
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
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/avatar4.svg',
                              width: 80,
                              height: 80,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black26),
                                //color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "Deportista",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "Lindsey Vonn",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                letterSpacing: 2.5,
                                fontWeight: FontWeight.bold,
                                // ignore: prefer_const_literals_to_create_immutables
                              ),
                            ),
                            Text(
                              "Lindsey_von         ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                letterSpacing: 2.5,
                                fontWeight: FontWeight.bold,
                                // ignore: prefer_const_literals_to_create_immutables
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //////////////////////////
                    //INICIO DEL PRIMER CUADRO
                    //////////////////////////
                    Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 179, 192, 3)),
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/icons/snapchat1.svg',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Snapchat+                                 ‎",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Funciones exclusivas, experimentos y\nen versión preliminar                              ‎ ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ///////////////////////
                    //FIN DEL PRIMER CUADRO
                    //////////////////// //
                    //INICIO DEL PRIMER CUADRO
                    //////////////////////////
                    Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black26),
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/icons/contacts.svg',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Tus amigos en Snapchat",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,

                                    // ignore: prefer_const_literals_to_create_immutables
                                  ),
                                ),
                                ///////////////
                                Text(
                                  "Toca para sincronizar tus datos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 75,
                            ),
                            Icon(
                              Icons.close,
                              size: 20,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    ///////////////////////
                    //FIN DEL SEGUNDO CUADRO
                    //////////////////// //
                    //INICIO DEL TEXTO MIS HISTORIAS
                    //////////////////////////
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 15),
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 30,
                      child: Text(
                        'Mis historias',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    ////////////////////////////////////////
                    //INICIO DEL TERCER CUADRO
                    //////////////////////
                    Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black26),
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(
                              'assets/icons/camera1.svg',
                              width: 40,
                              height: 38,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 23,
                                ),
                                Text(
                                  "Añadir a Mi historia",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 107,
                            ),
                            Text(
                              "...",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )),
                    ////////////////////////////////////////
                    //FIN DEL TERCER CUADRO
                    //////////////////////
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 15),
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 30,
                      child: Text(
                        'Amigos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ////////////////////////////////////////
                    //INICIO DEL CUARTO CUADRO
                    //////////////////////
                    Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black26),
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            SvgPicture.asset(
                              'assets/icons/adduser.svg',
                              width: 30,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 23,
                                ),
                                Text(
                                  "Añadir amigos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ],
                        )),
                    //FIN DEL CUARTO CUADRO
                    //////////////////////
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black26),
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(
                              'assets/icons/firend.svg',
                              width: 30,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  "Mis amigos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 185,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 23,
                    ),
                    //////////////////////////////////////////////////
                    /////////////////////////////////
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 15),
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 30,
                      child: Text(
                        'Spotlight y Mapa de Snaps',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ////////////////////////////////////////
                    ////////////////////////////////////////
                    Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black26),
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            SvgPicture.asset(
                              'assets/icons/camera2.svg',
                              width: 40,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 23,
                                ),
                                Text(
                                  "Añadir a Spotlight",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Text(
                              "...",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )),
                    ///////////////////////////////////
                    /////////////////////
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black26),
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            SvgPicture.asset(
                              'assets/icons/corazon.svg',
                              width: 35,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  "Mis Spotlight favoritos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 95,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 23,
                    ),
                    //////////////////////////////////
                    //////////////////////////////////
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 15),
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 30,
                      child: Text(
                        'Mis tokens de Snap',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ////////////////////////////////////////
                    ////////////////////////////////////////
                    Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black26),
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            SvgPicture.asset(
                              'assets/icons/token2.svg',
                              width: 40,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "5",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 255,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ],
                        )),
                    ////////////////////////////////////
                    /////////////////////////////////////
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 15),
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 30,
                      child: Text(
                        'Mapa de Snaps',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ////////////////////////////////////////
                    ////////////////////////////////////////

                    Container(
                      margin: EdgeInsets.only(right: 12, left: 12),
                      width: double.infinity,
                      child: Image.asset(
                        'assets/icons/planeta3.jpg',
                      ),
                      decoration: BoxDecoration(
                        // border: Border.all(width: 2, color: Colors.black26),
                        //color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),

                    ///////////////////////////
                    //////////////////////////////
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 15),
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 30,
                      child: Text(
                        'Cameos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ////////////////////////////////////////
                    ////////////////////////////////////////
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10),
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(
                        'assets/icons/cameo.jpg',
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black26),
                        //color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    ////////////////////////////////
                    ///////////////////////////////
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black26),
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/icons/rostro2.svg',
                              width: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Crear selfie para cameo",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 60,
                            ),
                          ],
                        )),
                    ///////////////////////////
                    //////////////////////////
                    SizedBox(
                      height: 70,
                    ),
                    Icon(
                      Icons.snapchat,
                      size: 35,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Se ha unido a Snapchat el 30 de setiembre del 2021‎ ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
