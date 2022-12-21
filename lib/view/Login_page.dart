import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:giai_do_ech_xanh/components/Login_widget.dart';
import 'package:giai_do_ech_xanh/view/Home_page.dart';


class Login_page extends StatefulWidget {
  const Login_page({super.key});

 
  

  @override
  State<Login_page> createState() => _Login_page();
}

class _Login_page extends State<Login_page> {
  
 
 
  bool _showpass= false;

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return Home_page();
          }else{
            return Login_widget();
          }
          
        },
      )  
      ); 
  }

  

 
}


  