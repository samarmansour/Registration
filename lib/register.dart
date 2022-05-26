// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:sign_up/login.dart';
import 'package:sign_up/screens/curved-left.dart';
import 'package:sign_up/screens/curved-right.dart';
// import 'package:sign_up/generated_plugin_registrant.dart';



class Register extends StatelessWidget {
  
           
        
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';
  String  _age='';

  
  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_userName);
      debugPrint(_password);
      debugPrint(_confirmPassword);
       debugPrint(_age);

    
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
      child: SingleChildScrollView( child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
       Container(
         child: Stack(
          children: <Widget>[
         
            Positioned(top: 0, left: 0, child: Curvedright()),
           SizedBox(height: 20,),
     Container( 
          
      alignment: Alignment.center,
        child: Center(
         child: Padding(
             padding: const EdgeInsets.only(
                      right: 30.0,
                      left: 30.0,
                      top: 160.0,
                      bottom: 50.0
                    ),
              
            child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    
 children: [
                     /// Eamil
                      TextFormField(
                        
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                labelText: 'Email', 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)), 
                     isDense: true,                      
          contentPadding: EdgeInsets.all(8),
                 focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 31, 18, 148), width: 2.0),
                ),),
               
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your email address';
                          }
                          // Check if the entered email has the right format
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        onChanged: (value) => _userEmail = value,
                      ),
                      Container(height: 20,),

                      /// username
                      TextFormField(
                        decoration:
                         InputDecoration(prefixIcon: Icon(Icons.person),
                labelText: 'username',
              
              border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)), 
                     isDense: true,                      
          contentPadding: EdgeInsets.all(8),
                 focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 31, 18, 148), width: 2.0),
                ),),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value.trim().length < 4) {
                            return 'Username must be at least 4 characters in length';
                          }
                          
                          return null;
                        },
                        onChanged: (value) => _userName = value,
                      ),
   Container(height: 20,),
                      /// Password
                      TextFormField(
                        decoration:
                         InputDecoration(prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
            
               border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                     isDense: true,                     
          contentPadding: EdgeInsets.all(8), 
                 focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 31, 18, 148), width: 2.0),
                ),),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value.trim().length < 8) {
                            return 'Password must be at least 8 characters in length';
                          }
                          
                          return null;
                        },
                        onChanged: (value) => _password = value,
                      ),
   Container(height: 20,),
                      /// Confirm Password
                      TextFormField(
                        decoration:InputDecoration(prefixIcon: Icon(Icons.lock),
                labelText: 'Confirm Password',
               border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                      isDense: true,                     
          contentPadding: EdgeInsets.all(8),  
                 focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 31, 18, 148), width: 2.0),
                ),),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          if (value != _password) {
                            return 'Confimation password does not match the entered password';
                          }

                          return null;
                        },
                        onChanged: (value) => _confirmPassword = value,
                      ),
                      Container(height: 20,),
                        TextFormField(
                        decoration:InputDecoration(prefixIcon: Icon(Icons.person),
                labelText: 'Age',
               border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)), 
                      isDense: true,                     
          contentPadding: EdgeInsets.all(8), 
                 focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 31, 18, 148), width: 2.0),
                ),),
                      
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
  if (value.trim().length > 2) {
                            return 'Age must be at least 2 numbers in length';
                          }
                         
                          return null;
                        },
                        onChanged: (value) => _age = value,
                      ),
                   


                      const SizedBox(height: 20),
                       Container(
              margin: EdgeInsets.only(top: 32.0),
              width:200,
              child: RaisedButton(
                color: Color.fromARGB(255, 22, 7, 88),
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: _trySubmitForm
              ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
            ),   SizedBox(height: 27,),
     Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
                children: [
             
                  FlutterSocialButton(
                   
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.facebook,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.google,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.twitter,
                  ),
                 
                ],
          ),
           SizedBox(height:20),
          Container(
                margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already have an  account? ',
                    ),
                    InkWell(
                   
                      onTap: () {
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
                      },
                      child: const Text(
                        ' Login',
                        style: TextStyle(
                              color:Color.fromARGB(255, 10, 18, 85),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                    ],
                  )), 
  ] ),
          ),
        ),                     
     ))]),
 ) ]))));
  }
}