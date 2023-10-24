
import 'package:flutter/material.dart';

import 'component/igniter_cell.dart';

class IgniteCollabPage extends StatelessWidget {
  IgniteCollabPage({super.key});

  final List<Widget> igniters = [
    const IgniterCell(path: "assets/image/collab0.png", name: "Khải Huyền", title: "Event\nCollaborator",),
    const IgniterCell(path: "assets/image/collab1.png", name: "Hồ Hạ", title: "Academic\nCollaborator",),
    const IgniterCell(path: "assets/image/collab2.png", name: "Quý Nhàn", title: "Content\nCollaborator",),
    const IgniterCell(path: "assets/image/collab3.png", name: "Thanh Nhàn", title: "Event\nCollaborator",),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(width: 200, height: 1, color: Colors.white,),
          SizedBox(height: 50,),
          Text("Ignite Collaborators", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
          // SizedBox(height: 20,),
          SizedBox(
            width: 600,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              shrinkWrap: true,
              childAspectRatio: 1/2.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 25,
              crossAxisCount: 4,
              children: List.generate(4, (index) {
                return igniters[index];
              }),
            ),
          )
        ],
      ),
    );
  }
}