import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class pagina2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => pagina1state();
}

class pagina1state extends State<pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 130,
          ),
          Text(
            "¿Qué estás esperando?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "¡Es gratis!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 150,
          ),
          CupertinoButton(
            child: Text('Registrarme con mi e-mail'),
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
            onPressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          CupertinoButton(
            child:
                Text("Ya tengo cuenta", style: TextStyle(color: Colors.blue)),
            padding: EdgeInsets.symmetric(horizontal: 115, vertical: 5),
            onPressed: () {},
          ),
          SizedBox(
            height: 210,
          ),
          Column(
            children: [
              Text(
                "Al registrarme, declaro que soy mayor de edad y",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "acepto los ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                  Text("Terminos y Condiciones ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                      )),
                  Text(
                    "y las ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Politicas de Privacidad ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                      )),
                  Text(
                    "de Mercado Libre",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
