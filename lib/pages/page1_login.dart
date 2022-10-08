import 'package:app_snapchat/pages/page2_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class page1_login extends StatefulWidget {
  static final routeName = 'home';
  @override
  State<StatefulWidget> createState() => page1_loginstate();
}

class page1_loginstate extends State<page1_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "Iniciar sesión",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.only(right: 10, left: 30),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 30,
                child: Text(
                  'NOMBRE DE USUARIO O CORREO ELECTRONICO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 30),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 10,
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      autofocus: true,
                      showCursor:
                          true, //PARA Q PAREZCA LA LINEA PARPADEANTE DONDE SE ECRIBE
                      readOnly:
                          true, //para q no aparaca el teclado del sistema automaticamente
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 30),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    child: Text(
                      'Usa tu numero de telefono',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 30),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 30,
                    child: Text(
                      'CONTRASEÑA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 30),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 10,
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      autofocus: true,
                      showCursor:
                          true, //PARA Q PAREZCA LA LINEA PARPADEANTE DONDE SE ECRIBE
                      readOnly:
                          true, //para q no aparaca el teclado del sistema automaticamente
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //////////////////////////////////
              Container(
                  margin: EdgeInsets.only(right: 10, left: 30),
                  width: double.infinity,
                  height: 38,
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 18,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            // margin: EdgeInsets.only(right: 10, left: 30),
                            alignment: Alignment.centerLeft,
                            // width: double.infinity,
                            //height: 2,
                            child: Text(
                              "Guarda la información de inicio de sesión en tu",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          ////////////////
                          Container(
                            //height: 2,
                            child: Text(
                              "dispositivo                                                                ‎",
                              //  textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 45,
              ),
              CupertinoButton(
                child: Text(
                  '¿Has olvidado tu contraseña?',
                  style: TextStyle(fontSize: 15),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                onPressed: () => print('boton cupertino....'),
              ),
              SizedBox(
                height: 50,
              ),
              CupertinoButton(
                child: Text('Iniciar sesión'),
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                onPressed: () {
                  final miRuta = MaterialPageRoute(
                    builder: (context) => page2_home(),
                  );
                  Navigator.push(context, miRuta);
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )),
        ));
  }
}
