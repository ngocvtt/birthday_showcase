import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MilestoneCell extends StatelessWidget {
  final String date;
  final String description;
  final bool isLeft;
  final Color color;
  const MilestoneCell({super.key, required this.date, required this.description, this.isLeft = true, this.color = Colors.blueAccent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: isLeft? CrossAxisAlignment.start: CrossAxisAlignment.end,
        children: [
          Text(date, style: TextStyle(color: color, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text(description, style: TextStyle(color: Colors.white,),),
        ],
      ),
    );
  }
}
