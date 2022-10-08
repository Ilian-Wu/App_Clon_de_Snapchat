// ignore_for_file: prefer_const_constructors

import '../widgets/miAppBar.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String nombreUsuario;
  ChatPage({Key? key, required this.nombreUsuario}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              MiAppBar(
                iconoIzquierda:
                    "https://www.svgrepo.com/show/218169/left-arrow-back.svg",
                iconoDerecha: "https://www.svgrepo.com/show/39559/message.svg",
                onClickIzquierda: () => Navigator.pop(context),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Bienvenido a ChatPage: ${widget.nombreUsuario}",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
