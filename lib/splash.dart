import 'package:flutter/material.dart';
import 'package:sign_up/register.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 3);
   
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Register();
          },
        ),
        (route) => false,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children:[
        
            const CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
            backgroundImage: NetworkImage('assets/logo.jpg'),
            ),
          const SizedBox(height: 150,),
            CircularProgressIndicator(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
            Container(
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: Text('leu_life', style:GoogleFonts.sansitaSwashed  ( fontWeight: FontWeight.bold,color: Color.fromARGB(255, 50, 10, 145), fontSize: 40),))
          ]
        ),
      ),
    

        
      
    );
  }
}