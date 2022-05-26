

import 'package:flutter/material.dart';


import 'package:sign_up/Forget.dart';


import 'package:sign_up/screens/curved-left.dart';




import 'Forget.dart';


void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
 
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); String _userEmail = '';
  String _password = '';
void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_password);
    }
  }
  late TextEditingController _ctrlUsername, _ctrlPassword;
  bool  _rememberMe = true;

  
  @override
  void dispose() {
    _ctrlUsername.dispose();
    _ctrlPassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      
       
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
            
          children:    <Widget>[
      
            Positioned(top: 0, left: 0, child: CurvedLeft()),
                _renderTextField(),
               
                _renderPassword(),
                _renderRememberMe(),
                _renderLoginButton(),
            
             
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _pressRememberMe(val) {
    setState(() {
      this._rememberMe = val;
    });
  }
  
 
 
                  
              
  Widget _renderTextField() {
           
   
    return Container( 
                 margin: const EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
      
      child:  TextFormField(
                        
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
                       
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                         
                          return null;
                        },
                        onChanged: (value) => _userEmail = value,
                      ));  
  }
  
  Widget _renderPassword() {
                
    return Container(
                 margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      
      child: TextFormField(
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
                      ));
  }

  Widget _renderRememberMe() {
    return  Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child:
    
     Row(
      children: <Widget>[
        GestureDetector(
          onTap: () => _pressRememberMe(!_rememberMe),
          child: Container(
               

            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Checkbox(  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(9.0))),   activeColor: Color.fromARGB(255, 48, 17, 122), //The color to use when this checkbox is checked.
            checkColor: Colors.white,
                    value: _rememberMe,
                    onChanged: _pressRememberMe,
                  ),
                ),
                Container(margin: const EdgeInsets.fromLTRB(1.0, 20.0, 1.0, 20.0),
                  padding: EdgeInsets.only(left: 16),
                  child: Text("Remember Me"),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Forget()),
            );},
            child: Text(
              "Forgot Password",
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    ));
  }

  Widget _renderLoginButton() {
    return  
                       Container(
              margin: EdgeInsets.only(top: 32.0),
              width:200,
              child: RaisedButton(
           color: Color.fromARGB(255, 22, 7, 88),
                textColor: Colors.white,
                elevation: 5.0,
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: _trySubmitForm
              ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
            ); 
  }
}
            

