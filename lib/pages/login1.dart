import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 1, 18, 32),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 130,
          ),
          SvgPicture.asset(
            'assets/icons/gota.svg',
            width: 130,
            height: 130,
          ),
          SizedBox(
            height: 10,
          ),
          Text("DROPIUM", style: TextStyle(color: Colors.white54)),
          SizedBox(
            height: 80,
          ),
          CupertinoButton(
            child: Text('Username', style: TextStyle(color: Colors.black54)),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 95, vertical: 5),
            onPressed: () => print('boton cupertino....'),
          ),
          SizedBox(
            height: 30,
          ),
          CupertinoButton(
            child: Text('********', style: TextStyle(color: Colors.black54)),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 108, vertical: 5),
            onPressed: () => print('boton cupertino....'),
          ),
          SizedBox(
            height: 30,
          ),
          CupertinoButton(
            child: Text('Log In', style: TextStyle(color: Colors.white60)),
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(213, 21, 209, 216),
            padding: EdgeInsets.symmetric(horizontal: 115, vertical: 5),
            onPressed: () => print('boton cupertino....'),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Forgot your password?',
              style: TextStyle(color: Colors.white38)),
        ],
      )),
    );
  }
}
