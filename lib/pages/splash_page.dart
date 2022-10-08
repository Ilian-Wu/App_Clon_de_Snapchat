// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:app_snapchat/pages/home_page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterLayoutMixin {
  @override
  void initState() {
    super.initState();
    /* Future.delayed(Duration(seconds: 3)).then((value) {
      print('cargando HomePage...');
      Navigator.pushNamed(context, HomePage.routeName);
    }); */
    //Navigator.pushNamed(context, HomePage.routeName);
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      print('cargando HomePage...');
      //Navigator.pushNamed(context, HomePage.routeName);
      Navigator.pushNamedAndRemoveUntil(
          context, HomePage.routeName, (route) => false);
    });
    //Navigator.pushNamed(context, HomePage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(radius: 20),
      ),
    );
  }
}
