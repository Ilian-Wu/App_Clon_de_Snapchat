import 'package:app_snapchat/widgets/contenedor_circulo2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(children: [
        /*  Container(color: Colors.red, width: 100, height: 100),
        Container(color: Colors.blue, width: 80, height: 80),
        Container(color: Colors.green, width: 50, height: 50), */
        /* SvgPicture.asset(
          'assets/icons/usuario.svg',
          width: 200,
          height: 200,
        ), */
        SvgPicture.network(
          'https://www.svgrepo.com/show/22146/user.svg',
          width: 200,
          height: 200,
        ),
        Positioned(
          /* child: Container(
            child: Icon(Icons.edit),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 200, 200, 200),
              shape: BoxShape.circle,
            ),
          ), */
          child: ContenedorCirculo(child: Icon(Icons.edit), size: 50),
          right: 0,
          top: 0,
        ),
      ]),
    );
  }
}
