import 'package:flutter/material.dart';
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
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body:  Container(
        constraints: BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243,221, 1),
       child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
      Text('ĐĂNG NHẬP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
        Icon(Icons.person,size: 80,),

        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                labelText: 'Tài khoản',
                border: OutlineInputBorder(borderRadius: 
                BorderRadius.circular(10)
                )
                
                ),
              
            ),
          ),width: 350,height: 50,
        ),

         Container(
           child:
           Stack( alignment: AlignmentDirectional.centerEnd,
            children: [
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
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
          children: [ Text('Quên mật khẩu?',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 15,
          decoration: TextDecoration.underline,
        ),),
        Padding(padding: EdgeInsets.all(13)
        )],
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

  void LessShowPass(){
  setState((){
   _showpass = !_showpass;
  });
}
}


  