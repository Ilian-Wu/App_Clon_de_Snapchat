import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomMenuItem {
  final String rutaIcono, texto;

  BottomMenuItem({required this.rutaIcono, required this.texto});
}

class BottomMenu extends StatelessWidget {
  final List<BottomMenuItem> items;

  BottomMenu({super.key, required this.items}) : assert(items.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      color: Colors.white,
      //padding: EdgeInsets.all(1),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final BottomMenuItem item = items[index];
            return CupertinoButton(
              padding: EdgeInsets.zero,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(item.rutaIcono, width: 70),
                  SizedBox(
                    height: 1,
                  ),
                  Text(item.texto,
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                ],
              ),
              onPressed: () {},
            );
          }),
        ),
      ),
    );
  }
}
