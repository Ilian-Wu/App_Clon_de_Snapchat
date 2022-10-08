import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(95, 74, 41, 134),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "  Classify transaction",
                  style: TextStyle(color: Colors.white60, fontSize: 25),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Classify this transaction into a \nparticular Category",
                  style: TextStyle(color: Colors.white60, fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          //aqui vienen los cuadros
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(95, 74, 41, 134).withOpacity(0.1),
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
                            width: 70,
                            height: 70,
                            child: Center(
                              child: Icon(
                                Icons.remove_road_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'PARENT',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 11),
                          ),
                        ]),
                  )),
              //1 ercuadro
              Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(95, 74, 41, 134).withOpacity(0.1),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            width: 70,
                            height: 70,
                            child: Center(
                              child: Icon(
                                Icons.filter_4_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'PARENT',
                            style: TextStyle(color: Colors.green, fontSize: 11),
                          ),
                        ]),
                  )),
            ],
          ),
          SizedBox(
            height: 35,
          ),
//separacion
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(95, 74, 41, 134).withOpacity(0.1),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            width: 70,
                            height: 70,
                            child: Center(
                              child: Icon(
                                Icons.home_max,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'PARENT',
                            style: TextStyle(color: Colors.red, fontSize: 11),
                          ),
                        ]),
                  )),
              //1 ercuadro
              Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(95, 74, 41, 134).withOpacity(0.1),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              shape: BoxShape.circle,
                            ),
                            width: 70,
                            height: 70,
                            child: Center(
                              child: Icon(
                                Icons.ad_units_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'PARENT',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 11),
                          ),
                        ]),
                  )),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          //separacion
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(95, 74, 41, 134).withOpacity(0.1),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.yellowAccent,
                              shape: BoxShape.circle,
                            ),
                            width: 70,
                            height: 70,
                            child: Center(
                              child: Icon(
                                Icons.phone_android,
                                size: 40,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'PARENT',
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ]),
                  )),
              //1 ercuadro
              Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(95, 74, 41, 134).withOpacity(0.1),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              shape: BoxShape.circle,
                            ),
                            width: 70,
                            height: 70,
                            child: Center(
                              child: Icon(
                                Icons.no_meeting_room_sharp,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'PARENT',
                            style: TextStyle(color: Colors.teal, fontSize: 11),
                          ),
                        ]),
                  )),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(58, 194, 186, 186),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.stadium_sharp,
                  color: Colors.red,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.green), label: ""),
          ]),
    );
  }
}
