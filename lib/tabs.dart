import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  final Color color;
  final String text;

  const AppTabs({Key, key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      child: Text(
        this.text,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.white, blurRadius: 7, offset: Offset(0, 0))
          ]),
    );
  }
}
class Image{
  String urlImage;
  Image({required this.urlImage});
}