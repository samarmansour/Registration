import 'package:flutter/material.dart';

class Curvedright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ClipPath(
        clipper: RightClipper(),
        child: Container(
          padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
           // ignore: sort_child_properties_last
           child: const Align(
            
  alignment: Alignment.topRight,
  child: Text("Welcome",   textAlign: TextAlign.start,
                
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                  
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    // height: 5.5
                  ))),
         
          height: 200.0,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Color.fromARGB(255, 50, 1, 129),
                Color.fromARGB(255, 69, 48, 189)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RightClipper extends CustomClipper<Path> {
 @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width/9, size.height - 90, size.width/3, size.height-90);
    path.quadraticBezierTo(
      3/4*size.width, size.height,size.width, size.height-60);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}