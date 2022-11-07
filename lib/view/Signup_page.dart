import 'package:flutter/material.dart';
class Signup_page extends StatefulWidget {
  const Signup_page({super.key});
 
  @override
  State<Signup_page> createState() => _Signup_page();
}


class _Signup_page extends State<Signup_page> {
 
 bool isChecked=true;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Dang ky'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243, 221, 1),
       child: Column(
        children: [
          Padding(padding: EdgeInsets.all(20)),
      Text('ĐĂNG KÝ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
        Icon(Icons.person,size: 80,),

        Container(
          child: TextField(
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
              labelText: 'Tài khoản',
              labelStyle: TextStyle(color: Colors.black,fontSize: 20,),
              
              ),
            
          ),width: 350,height: 50,
        ),

         Container(
           child: TextField(
            style: TextStyle(fontSize: 15),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Mật khẩu',
              labelStyle: TextStyle(color: Colors.black,fontSize: 20,),
    
              ),
        ),width: 350,height: 50,
         ),

         Container(
           child: TextField(
            style: TextStyle(fontSize: 15),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Nhập lại mật khẩu',
              labelStyle: TextStyle(color: Colors.black,fontSize: 20,),
    
              ),
        ),width: 350,height: 50,
         ),

         Container(
           child: TextField(
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
              labelText: 'Số điện thoại',
              labelStyle: TextStyle(color: Colors.black,fontSize: 20,),
    
              ),
        ),width: 350,height: 50,
         ),

         Container(
           child: TextField(
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.black,fontSize: 20,),
    
              ),
        ),width: 350,height: 50,
         ),

        Container(
          child: Row(children: [Checkbox(
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool? value){
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text('chấp nhận đăng kí tài khoản'),
          ],
          ),width: 350,height: 50,
        ),

        Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
             ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(104, 176, 171, 1)
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: 
              BorderRadius.circular(30.0)
              )
            )
          ),
          onPressed: () => {},
          child: const Padding(padding: EdgeInsets.fromLTRB(18, 13, 18, 13),
          child: Text("ĐĂNG KÝ",),
          ),
        ),
        
        ],  
    )
    )); 
  }
}
