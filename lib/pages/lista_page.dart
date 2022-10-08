// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/miAppBar.dart';
import '../utils/data.dart';

class ListaPage extends StatefulWidget {
  static const routeName = 'lista';
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<String> _datos = data; //trae los datos importados data.dart
  //List<String> _datos = []; //lista vacia
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              MiAppBar(
                iconoIzquierda:
                    "https://www.svgrepo.com/show/218169/left-arrow-back.svg",
                iconoDerecha:
                    "https://www.svgrepo.com/show/311328/text-bullet-list-add.svg",
                onClickIzquierda: () => Navigator.pop(context),
                onClickDerecha: () {
                  _datos.insert(0, "item ${_datos.length}");
                  setState(() {
                    //_datos.add("item ${_datos.length}"); //inserta al final de la lista
                    //_datos.insert(0, "item ${_datos.length}");  //inserta al inicio de la lista
                    //_datos.insert(_datos.length - 1, "item ${_datos.length}");
                  });
                },
              ),
              Expanded(
                //child: ListView(
                //Forma 1
                /* children: List.generate(data.length, (index) {
                    final String item = data[index];
                    return Text(item, style: TextStyle(fontSize: 18));
                  }), */
                //Forma 2
                /* children: data.map<Widget>((String item) {
                    return Text(item, style: TextStyle(fontSize: 20));
                  }).toList(), */
                //Forma 3
                /* child: ListView.builder(
                  itemBuilder: (BuildContext context, int pos) {
                    final String item = data[pos];
                    return Text(item, style: TextStyle(fontSize: 22));
                  },
                  itemCount: data.length,
                ), */
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int pos) {
                    //final String item = data[pos];
                    final String item = _datos[pos];
                    return ListTile(
                      title: Text(item, style: TextStyle(fontSize: 20)),
                      subtitle: Text(DateTime.now().toString()),
                      leading: Icon(Icons.favorite),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                      onLongPress: () {
                        setState(() {
                          _datos.removeAt(pos);
                        });
                      },
                    );
                  },
                  itemCount: data.length,
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
