import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IgniterCell extends StatelessWidget {
  final String path;
  final String name;
  final String title;
  const IgniterCell({super.key, required this.path, required this.name, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(path, height: 230,),
          SizedBox(height: 20,),
          Text(name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Expanded(child: Text(title, style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic), textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}
