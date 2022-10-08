import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(70, 79, 85, 139),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text('Sign up',
                style: TextStyle(color: Colors.white, fontSize: 28)),
            SizedBox(
              height: 20,
            ),
            Text('WHO YOU ARE?',
                style: TextStyle(
                    color: Color.fromARGB(150, 10, 32, 223), fontSize: 15)),
            SizedBox(
              height: 10,
            ),

            Container(
              height: 100,
              width: 350,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/parent.svg', width: 50, height: 50,
                            //   color: Colors.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          //borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'PARENT',
                        style: TextStyle(color: Colors.yellow, fontSize: 11),
                      ),
                    ],
                  ),
                  /////////////////////
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/gota.svg', width: 50, height: 50,
                            //   color: Colors.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(239, 247, 143, 8),
                          //borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'CHILD',
                        style: TextStyle(color: Colors.orange, fontSize: 11),
                      ),
                    ],
                  ),
                  //////////////////
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/teacher.svg', width: 40, height: 40,
                            //   color: Colors.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 2, 160, 207),
                          //borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'TEACHER',
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                    ],
                  ),
                ],
              )),
            ),

            /////////////////////

            SizedBox(
              height: 30,
            ),
            //aqui va la parte de los botones

            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.white12)),
                  width: 300,
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.phone_android,
                        size: 28,
                        color: Colors.white24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Username",
                          style:
                              TextStyle(color: Colors.white60, fontSize: 17)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.white12)),
                  width: 300,
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.email,
                        size: 28,
                        color: Colors.white24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("E mail",
                          style:
                              TextStyle(color: Colors.white60, fontSize: 17)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.white12)),
                  width: 300,
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.password,
                        size: 28,
                        color: Colors.white24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Password",
                          style:
                              TextStyle(color: Colors.white60, fontSize: 17)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.white12)),
                  width: 300,
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.open_in_browser,
                        size: 28,
                        color: Colors.white24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Confirm Password",
                          style:
                              TextStyle(color: Colors.white60, fontSize: 17)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CupertinoButton(
                  borderRadius: BorderRadius.circular(25),
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(color: Colors.white60, fontSize: 15),
                  ),
                  color: Color.fromARGB(255, 226, 139, 8),
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 3),
                  onPressed: () => print('boton cupertino....'),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alreadt have an account.",
                        style: TextStyle(color: Colors.white60, fontSize: 13)),
                    Text(" LOGIN here",
                        style: TextStyle(color: Colors.orange, fontSize: 12))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
