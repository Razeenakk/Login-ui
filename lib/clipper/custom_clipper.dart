import 'package:flutter/cupertino.dart';

class SideCutClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height*.60);
    path.lineTo(size.width,size.height*.40);
    path.lineTo(size.width, size.height);
   // path.lineTo(size.width/2, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height/2);


    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}