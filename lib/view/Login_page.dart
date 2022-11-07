import 'package:flutter/material.dart';
class Login_page extends StatefulWidget {
  const Login_page({super.key});

 
  

  @override
  State<Login_page> createState() => _Login_page();
}

class _Login_page extends State<Login_page> {
  

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Dang Nhap'),
      ),
      body:  Container(
        constraints: BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243,221, 1),
       child: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          Row(mainAxisAlignment: MainAxisAlignment.end,children: [
            IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.close),
            iconSize: 40,
            tooltip: 'Thoát',
            
            )
          ]),

          Padding(padding: EdgeInsets.all(10)),
      Text('ĐĂNG NHẬP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
        Icon(Icons.person,size: 80,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: TextField(
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                labelText: 'Tài khoản',
                labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                
                ),
              
            ),width: 350,height: 50,
          ),
        ),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             child: TextField(
              style: TextStyle(fontSize: 15),
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mật khẩu',
                labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
    
                ),
        ),width: 350,height: 50,
           ),
         ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ Text('Quên mật khẩu?',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            decoration: TextDecoration.underline,
          ),),
          Padding(padding: EdgeInsets.all(15)
          )],
          ),
        ),
        
        Row(mainAxisAlignment: MainAxisAlignment.center,
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
            onPressed: () => {},
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
            onPressed: () => {},child: Text("ĐĂNG KÝ"),
        ),
         )
        
        ],)
       
    ])
    )); 
  }
}