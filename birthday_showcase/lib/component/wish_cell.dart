import 'dart:math';

import 'package:birthday_showcase/model/wish_note.dart';
import 'package:flutter/material.dart';

class WishCell extends StatelessWidget {
  final WishNote note;
  final Color backgroundColor;
  WishCell({super.key, required this.note, this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    Color color = getColor();
    Color toColor = getColor();
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: color),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('To: ${note.to}', style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(height: 5,),
            Align(alignment: Alignment.centerRight, child: Text('From: ${note.from}', style: TextStyle(color: toColor, fontStyle: FontStyle.italic),)),
            Divider(color: Colors.grey.shade200, thickness: 1,),
            Text(note.content, style: TextStyle(color: Colors.grey.shade200,),),
          ],
        ),
      ),
    );
  }

  List<Color> colors = [
    Color(0xff54a7ed),
    Color(0xff2480f0),
    Color(0xff00dba2),
    Color(0xffffc4a2),
    Color(0xff00b698),
    Color(0xffff676a),
  ];

  Color getColor(){
    Random rnd;
    int min = 0;
    int max = 4;
    rnd = Random();
    int num = min + rnd.nextInt(max - min);
    return colors[num];
  }
}
