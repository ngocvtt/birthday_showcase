import 'package:flutter/cupertino.dart';

class PhotoCell extends StatelessWidget {
  final String path;
  final double height;
  const PhotoCell({super.key, required this.path, this.height = 10});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(path, height: height,));
  }
}
