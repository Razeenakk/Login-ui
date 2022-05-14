import 'package:flutter/cupertino.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 20);

    var firstControllPoint =Offset(size.width/6, size.height-40);
    var firstEndPoint = Offset(size.width/2, size.height-20);
    path.quadraticBezierTo(firstControllPoint.dx, firstControllPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControllPoint = Offset(size.width - size.width/6, size.height);
    var secodEndPoint = Offset(size.width, size.height-40);
    path.quadraticBezierTo(secondControllPoint.dx, secondControllPoint.dy, secodEndPoint.dx, secodEndPoint.dy);
    path.lineTo(size.width ,0.0);
path.close();
return path;
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper)  => false;
    // TODO: implement shouldReclip

  }

