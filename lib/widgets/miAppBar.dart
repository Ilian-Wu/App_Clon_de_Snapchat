// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/chat_page.dart';

class MiAppBar extends StatelessWidget {
  final String iconoIzquierda, iconoDerecha;
  //VoidCallback es un tipo que permite definir
  //una funcion sin parametros y sin retorno
  final VoidCallback? onClickIzquierda, onClickDerecha;

  const MiAppBar(
      {Key? key,
      required this.iconoIzquierda,
      required this.iconoDerecha,
      this.onClickIzquierda,
      this.onClickDerecha})
      : super(key: key);

  //"https://www.svgrepo.com/show/96890/camera.svg"
  //"https://www.svgrepo.com/show/39559/message.svg"

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Color.fromARGB(255, 230, 230, 230),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CupertinoButton(
            /* child: Icon(
              Icons.camera_enhance,
              size: 35,
              color: Colors.black54,
            ), */
            child: SvgPicture.network(iconoIzquierda, width: 35),
            //onPressed: () {},
            onPressed: onClickIzquierda,
          ),
          Text(
            "MiAppBar",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          CupertinoButton(
            padding: EdgeInsets.all(0),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  /* child: Icon(
                    Icons.message,
                    size: 35,
                    color: Colors.black54,
                  ), */
                  child: SvgPicture.network(iconoDerecha, width: 35),
                ),
                Positioned(
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  right: 10,
                  top: 10,
                ),
              ],
            ),
            /* onPressed: () {
              final miRuta =
                  MaterialPageRoute(builder: (context) => ChatPage());
              Navigator.push(context, miRuta);
            }, */
            onPressed: onClickDerecha,
          ),
        ],
      ),
    );
  }
}

/* 
 */