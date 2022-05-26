

import 'package:flutter/material.dart';

import 'package:sign_up/login.dart';


class Forget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Forget  password',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _password = '';
  String _confirmPassword = '';


  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_password);
      debugPrint(_confirmPassword);

    }
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: double.infinity,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 7, 7, 143)),
              ),
              const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Text(
                      "Reset  Password",
                      style: TextStyle(
                          color: Colors.white,
                         
                          fontSize: 35),
                    ),
                  )),
              Positioned(
                top: 170,
                left: 20,
                  right: 20,
      
          child:  Card(
      
elevation: 5,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),),
                  key: _formKey,
                  child: Column(
                    
                    mainAxisSize: MainAxisSize.min,
                 
                    children: [ 
                      
         Container(
          
margin: const EdgeInsets.fromLTRB(90.0, 10.0, 90.0, 0.0),
  
     padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0)),
                      /// Eamil
                    
                      TextFormField(
         
                        decoration: InputDecoration(
                         
    
                          prefixIcon: Icon(Icons.email),
                labelText: 'Email', 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                      isDense: true,                     
          contentPadding: EdgeInsets.all(10),  
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
                      ),
                      Container(height: 20,),

                
  
                      /// Password
                      TextFormField(
                        
                        decoration:
                         InputDecoration(prefixIcon: Icon(Icons.lock),
                labelText: 'New Password',
            
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
                    
                      ///confirm Password
                      TextFormField(
                        decoration:
                         InputDecoration(prefixIcon: Icon(Icons.lock),
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

                  
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.only(top: 20.0),
                          alignment: Alignment.center,
                          child: OutlinedButton(
                              onPressed: _trySubmitForm,
                            
                              child: const Text('Reset'))),SizedBox(height: 20,)
                    ],
                  )), 
                               
                  
      ), 
                    
       Container(
              margin: EdgeInsets.only(top: 500.0,left: 150.0),
              width:200,
              child: RaisedButton(
                color: Color.fromARGB(255, 22, 7, 88),
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: _trySubmitForm
              ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),)
              
 
  
                     
    ]),
          )));
     
}
  }


