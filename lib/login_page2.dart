import 'package:flutter/material.dart';
import 'package:loginpage/clipper/bottom_wave_clipper.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.lightGreen,
        child: Column(
          children: [
            ClipPath(
                clipper: BottomWaveClipper(),
                child: Container(
                  color: Colors.yellow,
                  height: 400,
                  width: 400,
                )
            ),

          ],
        ),
      )

    );
  }
}

