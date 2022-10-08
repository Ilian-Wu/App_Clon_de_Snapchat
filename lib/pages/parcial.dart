import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/bottom_menu2.dart';

class parcial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text("Mi Tienda Virtual"),
        backgroundColor: Colors.orangeAccent,
      ),
      backgroundColor: Color.fromARGB(244, 235, 209, 226),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
                width: 500,
                height: 130,
                // color: Colors.black,
                child: Center(
                  child: Image.asset(
                    'assets/icons/banner.png',
                    width: double.infinity,
                  ),
                )),

            SizedBox(
              height: 20,
            ),
            //aqui vienen los cuadros
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              width: 90,
                              height: 90,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/icon1.svg',
                                  width: 90,
                                  height: 90,
                                  //color: Colors.red,
                                ),
                              ),
                            ),
                          ]),
                    )),
                //1 ercuadro
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              width: 90,
                              height: 90,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/icon2.svg',
                                  width: 90,
                                  height: 90,
                                  //color: Colors.red,
                                ),
                              ),
                            ),
                          ]),
                    )),
                //aqui viene el 3er cueadro
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              width: 90,
                              height: 90,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/icon4.svg',
                                  width: 90,
                                  height: 90,
                                  //color: Colors.red,
                                ),
                              ),
                            ),
                          ]),
                    )),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            //separacion para la siguein columna
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              width: 90,
                              height: 90,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/icon3.svg',
                                  width: 90,
                                  height: 90,
                                  //color: Colors.red,
                                ),
                              ),
                            ),
                          ]),
                    )),
                //1 ercuadro
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              width: 90,
                              height: 90,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/icon5.svg',
                                  width: 90,
                                  height: 90,
                                  //color: Colors.red,
                                ),
                              ),
                            ),
                          ]),
                    )),
                //aqui viene el 3er cueadro
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              width: 90,
                              height: 90,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/icon6.svg',
                                  width: 90,
                                  height: 90,
                                  //color: Colors.red,
                                ),
                              ),
                            ),
                          ]),
                    )),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            //separacion de la sgte columna
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              width: 90,
                              height: 90,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/gota.svg',
                                  width: 90,
                                  height: 90,
                                  //color: Colors.red,
                                ),
                              ),
                            ),
                          ]),
                    )),
                //1 ercuadro
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              width: 90,
                              height: 90,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/log-out.svg',
                                  width: 90,
                                  height: 90,
                                  //color: Colors.red,
                                ),
                              ),
                            ),
                          ]),
                    )),
                //aqui viene el 3er cueadro
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              width: 90,
                              height: 90,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/icons/lock.svg',
                                  width: 90,
                                  height: 90,
                                  //color: Colors.red,
                                ),
                              ),
                            ),
                          ]),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("Ver mas"),
            Icon(Icons.add)
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(
        items: [
          BottomMenuItem(rutaIcono: 'assets/icons/icon3.svg', texto: "Home"),
          BottomMenuItem(rutaIcono: 'assets/icons/icon4.svg', texto: "Perfil"),
          BottomMenuItem(rutaIcono: 'assets/icons/icon6.svg', texto: "Home"),
          BottomMenuItem(
              rutaIcono: 'assets/icons/icon1.svg', texto: "Opciones"),
        ],
      ),
    );
  }
}
