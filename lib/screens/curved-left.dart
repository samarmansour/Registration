import 'package:flutter/material.dart';

class CurvedLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ClipPath(
        clipper: LeftClipper(),
        child: Container(
           height: 200.0,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 10, 18, 85),
                Color.fromARGB(255, 69, 48, 189)
              ],
            ),
          ),
           child: const Align(
  alignment: Alignment.topLeft,
  child: Text("Welcome Back",   textAlign: TextAlign.end,
                
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                  
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    // height: 5.5
                  ))),
 

        ),
      ),
    );
  }
}

class LeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    final lowPoint = size.height - 90;
    final highPoint = size.height -90;
    path.lineTo(0, size.height*.55);
    path.quadraticBezierTo(
        size.width / 109, highPoint, size.width / 17, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}