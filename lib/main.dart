// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:app_snapchat/pages/lista_page.dart';
import 'package:app_snapchat/pages/login1.dart';
import 'package:app_snapchat/pages/login2.dart';
import 'package:app_snapchat/pages/login3.dart';
import 'package:app_snapchat/pages/page0_splash.dart';
import 'package:app_snapchat/pages/page1_login.dart';
import 'package:app_snapchat/pages/page2_home.dart';
import 'package:app_snapchat/pages/page3_perfil.dart';
import 'package:app_snapchat/pages/page3_perfil1.dart';
import 'package:app_snapchat/pages/page4_ajustes.dart';
import 'package:app_snapchat/pages/page4_ajustes1.dart';

import 'package:app_snapchat/pages/parcial.dart';

import 'package:app_snapchat/pages/teclado_page.dart';

import '../pages/images_page.dart';
import '../pages/splash_page.dart';
import '../pages/home_page3.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage2(),
      /* routes: {
        'image': (context) => ImagePage(),
      }, */
      routes: {
        ImagePage.routeName: (context) => ImagePage(),
        HomePage.routeName: (context) => HomePage(),
        ListaPage.routeName: (context) => ListaPage(),
        TecladoPage.routeName: (context) => TecladoPage(),
        page1_login.routeName: (context) => page1_login(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
