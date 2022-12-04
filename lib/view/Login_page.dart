import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Login_page extends StatefulWidget {
  const Login_page({super.key});

 
  

  @override
  State<Login_page> createState() => _Login_page();
}

class _Login_page extends State<Login_page> {
  
 TextEditingController _emailController =  TextEditingController();
 TextEditingController _passController =  TextEditingController();
 final _auth = FirebaseAuth.instance;
  bool _showpass= false;

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Container(
        constraints: BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243,221, 1),
       child: Column(
        
        children: [
          Padding(padding: EdgeInsets.all(50)),
          
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text('ĐĂNG NHẬP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
      ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.person,size: 80,),
        ),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.circular(10)
                  )
                  
                  ),
                
              ),
            ),width: 350,height: 50,
          ),
        ),

         Container(
           child:
           Stack( alignment: AlignmentDirectional.centerEnd,
            children: [
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: _passController,
              style: TextStyle(fontSize: 15),
              obscureText: !_showpass,
              decoration: InputDecoration(
                labelText: 'Mật khẩu',
              border: OutlineInputBorder(borderRadius: 
               BorderRadius.circular(10)

              ),
               
                ),
        ),
           ),
          GestureDetector(
            onTap: LessShowPass,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text('Show',style: TextStyle(color: Colors.blue),),
            ),
          )
           ]
           ,),width:350 ,height: 50, 
         ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 

            TextButton(
              onPressed: () {
          //        Navigator.of(context).pop();
          //  Navigator.push(context,
          //        MaterialPageRoute(builder: (context) => new Email_page()));
              }, 
              child: Text('Quên mật khẩu?',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 15,
          decoration: TextDecoration.underline,
        ),),
        ),

        Padding(padding: EdgeInsets.all(13)
        )],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 40, 8, 8),
              child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromRGBO(104, 176, 171, 1),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(120, 50)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
              ),
              onPressed: () async{
                try{
                  final _user = _auth.signInWithEmailAndPassword(email: _emailController.text, password: _passController.text);
                  _auth.authStateChanges().listen((event) {
                    if(event != null){
                      _emailController.clear();
                      _passController.clear();
                      Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);
                    }else{
                      final snackBar = SnackBar(content: Text('Email hoac mat khau khong dung'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }
                  ); 
                }
                catch(e){
                  final snackBar = SnackBar(content: Text('Loi ket noi den Server'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                
              },
              child: Text("ĐĂNG NHẬP", ),
          ),
            ),
          
           Padding(
             padding: const EdgeInsets.fromLTRB(8, 40, 8, 8),
             child: ElevatedButton(
              style: 
              ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromRGBO(104, 176, 171, 1)
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(120, 50)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
              ),
              onPressed: () => {
                // Navigator.push(context,new MaterialPageRoute(builder: (context) => new Signup_page()))
              },child: Text("ĐĂNG KÝ"),
          ),
           )
          
          ],),
        )
       
    ])
    )); 
  }

  void LessShowPass(){
  setState((){
   _showpass = !_showpass;
  });
}
}


  