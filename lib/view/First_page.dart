import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/Home_page.dart';
import 'package:giai_do_ech_xanh/view/Signup_page.dart';
import 'package:giai_do_ech_xanh/view/Login_page.dart';
class First_page extends StatefulWidget {
  const First_page({super.key});

 
  

  @override
  State<First_page> createState() => _First_page();
}

class _First_page extends State<First_page> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body:  Container(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

        Padding(
          padding: const EdgeInsets.fromLTRB(8, 50, 8, 400),
          child: Text('Giải Đố Ếch Xanh',style: TextStyle(color: Color.fromRGBO(74, 124, 89, 1),fontSize: 30,fontWeight: FontWeight.bold),),
        ),


        Padding(
          padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(104, 176, 171,1)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            minimumSize: MaterialStateProperty.all<Size>(Size(200, 75)),
            elevation: MaterialStateProperty.all<double>(8),
            shadowColor: MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.5))
          ),
                onPressed: (){
                  Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Login_page()));
                }, 
                child: Text('Đăng Nhập',style: TextStyle(fontSize: 18),)),        
          ],),
        ),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(104, 176, 171,1)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            minimumSize: MaterialStateProperty.all<Size>(Size(200, 75)),
            elevation: MaterialStateProperty.all<double>(8),
            shadowColor: MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.5))
          ),
                onPressed: (){
                  Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Signup_page()));
                }, 
                child: Text('Đăng Ký',style: TextStyle(fontSize: 18))),        
          ],),
        )

      ],)
      ,decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/First.jpg'),fit: BoxFit.cover)
        ),
      )
    );
}
}


  