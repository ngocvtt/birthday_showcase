import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/igniter_cell.dart';

class IgniterPage extends StatelessWidget {
  IgniterPage({super.key});

  final List<Widget> igniters = [
    IgniterCell(path: "assets/image/PhotosArtboard 01.jpg", name: "Ngọc Võ", title: "Founder\nGeneral Lead",),
    IgniterCell(path: "assets/image/PhotosArtboard 02.jpg", name: "Vũ Tống", title: "Co-founder\nDevCom Manager",),
    IgniterCell(path: "assets/image/PhotosArtboard 03.jpg", name: "Dương Nguyễn", title: "Co-founder\nFA - CM Manager",),
    IgniterCell(path: "assets/image/PhotosArtboard 04.jpg", name: "Tình Nguyễn", title: "Logistic Manager",),
    IgniterCell(path: "assets/image/PhotosArtboard 05.jpg", name: "Gia Anh", title: "Designer",),
    IgniterCell(path: "assets/image/PhotosArtboard 06.jpg", name: "Duyên Trần (Mi)", title: "Event - Partnership\nManager",),
    IgniterCell(path: "assets/image/PhotosArtboard 07.jpg", name: "Linh Nguyễn", title: "Designer",),
    IgniterCell(path: "assets/image/PhotosArtboard 08.jpg", name: "Hiếu Vũ", title: "Design Manager",),
    IgniterCell(path: "assets/image/PhotosArtboard 09.jpg", name: "Như Nguyễn", title: "Event Operation\nExecutive",),
    IgniterCell(path: "assets/image/PhotosArtboard 010.jpg", name: "Duyên Trần (Minnie)", title: "Partnership Specialist",),
    IgniterCell(path: "assets/image/PhotosArtboard 011.jpg", name: "Quyên Nguyễn", title: "Partnership Executive",),
    IgniterCell(path: "assets/image/PhotosArtboard 012.jpg", name: "Duyên Phạm", title: "Content Creator\n(Former)",),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("The Igniters 🔥", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          SizedBox(
            width: 600,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              shrinkWrap: true,
              childAspectRatio: 1/1.8,
              crossAxisSpacing: 0,
              mainAxisSpacing: 25,
              crossAxisCount: 3,
              children: List.generate(12, (index) {
                return igniters[index];
              }),
            ),
          )
        ],
      ),
    );
  }
}
