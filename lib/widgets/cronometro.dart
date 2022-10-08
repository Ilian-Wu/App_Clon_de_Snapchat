// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'dart:async';
import '../widgets/contenedor_circulo2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cronometro extends StatefulWidget {
  final double tiempoIni;
  final double? fontSize;

  Cronometro({super.key, this.tiempoIni = 0, this.fontSize});

  @override
  State<StatefulWidget> createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {
  double _time = 0;
  Timer? _timer;
//metodos del ciclo de vida de un StatefulWidget
//initState(), dispose() didChangeDependencies(), didUpdateWidget()
  @override
  void initState() {
    //se ejecuta antes que el metodo build()
    //antes de renderizar el widget
    //se ejecuta 1 sola vez al momento del renderizado
    super.initState();
    print('initState');
    _time = widget.tiempoIni;
  }

  @override
  void dispose() {
    //se ejecuta cuando el widget va a ser destruido
    //libera los recursos, y detiene el timer
    print('dispose');
    _detener();
    super.dispose();
  }

  void _iniciar() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() => _time += 1);
    });
  }

  void _detener() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //Text("00:00:00", style: TextStyle(fontSize: 20)),
          Text(_time.toString(),
              style: TextStyle(fontSize: widget.fontSize ?? 30)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                child: ContenedorCirculo(
                  child: Icon(Icons.play_arrow),
                  size: 50,
                ),
                onPressed: _iniciar,
                /* onPressed: () {
                  /* setState(() {
                    _time += 1;
                  }); */
                }, */
              ),
              CupertinoButton(
                child: ContenedorCirculo(
                  child: Icon(Icons.stop),
                  size: 50,
                ),
                onPressed: _detener,
                /* onPressed: () {
                  setState(() {
                    _time -= 1;
                  });
                }, */
              ),
            ],
          ),
        ],
      ),
    );
  }
}
