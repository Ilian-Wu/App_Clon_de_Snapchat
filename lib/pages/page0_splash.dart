// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:app_snapchat/pages/home_page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage2 extends StatefulWidget {
  SplashPage2({Key? key}) : super(key: key);

  @override
  State<SplashPage2> createState() => _SplashPage2State();
}

class _SplashPage2State extends State<SplashPage2> with AfterLayoutMixin {
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
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/snap.svg',
              width: 120,
              height: 120,
              //color: Colors.red,
            ),
          ),
        ),

        // child: CupertinoActivityIndicator(radius: 50),
      ),
    );
  }
}
