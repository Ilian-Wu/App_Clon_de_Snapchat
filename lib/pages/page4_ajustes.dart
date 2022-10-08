// ignore_for_file: prefer_const_constructors

import '../utils/data2.dart';
import 'package:flutter/material.dart';
import '../widgets/miAppBar.dart';
//import '../utils/data.dart';
import 'package:flutter/cupertino.dart';

class page_ajustes extends StatefulWidget {
  static const routeName = 'lista';
  const page_ajustes({super.key});

  @override
  State<page_ajustes> createState() => page_ajustesState();
}

class page_ajustesState extends State<page_ajustes> {
  List<String> _datos2 = data2;
  //trae los datos importados data.dart
  //List<String> _datos = []; //lista vacia
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Configuración",
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        //title: Text("MiApp", style: TextStyle(color: Colors.black)),
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
      ),
      //  backgroundColor: Colors.white,

      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int pos) {
                    //final String item = data[pos];
                    final String item = _datos2[pos];
                    return ListTile(
                      title: Text(item, style: TextStyle(fontSize: 15)),
                      // subtitle: Text(DateTime.now().toString()),
                      //leading: Icon(Icons.favorite),
                      onTap: () {},
                      onLongPress: () {},
                    );
                  },
                  itemCount: data2.length,
                ),
              ),
              //),
            ],
          ),
        ),
      ),
    );
  }
}
