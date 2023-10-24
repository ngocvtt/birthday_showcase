
import 'package:flutter/material.dart';

import 'component/igniter_cell.dart';


class FubaPage extends StatelessWidget {
  FubaPage({super.key});

  final List<Widget> igniters = [
    const IgniterCell(path: "assets/image/fuba0.jpg", name: "Ngân Sâu", title: "Fuba[0]",),
    const IgniterCell(path: "assets/image/fuba1.jpg", name: "Nhi Nguyễn", title: "Fuba[1]",),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(width: 200, height: 1, color: Colors.white,),
          SizedBox(height: 50,),
          Text("Fubas", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
          // SizedBox(height: 20,),
          SizedBox(
            width: 400,
            child: Center(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                shrinkWrap: true,
                childAspectRatio: 1/2.5,
                crossAxisSpacing: 20,
                mainAxisSpacing: 25,
                crossAxisCount: 2,
                children: List.generate(igniters.length, (index) {
                  return igniters[index];
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}