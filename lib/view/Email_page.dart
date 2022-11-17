import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/Home_page.dart';
import 'package:giai_do_ech_xanh/view/Signup_page.dart';
class Email_page extends StatefulWidget {
  const Email_page({super.key});

 
  

  @override
  State<Email_page> createState() => _Email_page();
}

class _Email_page extends State<Email_page> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body:  Container(
          constraints:  BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243,221, 1),
          child:Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
            Text('Thay đổi mật khẩu',
            style: TextStyle(
              fontSize: 30,
            ),
            ),

            SizedBox(
            height: 20,
            ),

            Text('Vui lòng điền tên tài khoản bạn sử dụng để đăng nhập'),

           Padding(
             padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
             child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Tên đăng nhập'
              ),
             ),
           ),

            Padding(
             padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
             child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email'
              ),
             ),
           ),

           
           Row(children: [
       Padding(
         padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
         child: Container(
          height: 40,
          width: 180,
           child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mã xác nhận',
                  ),
                  
                 ),
         ),
       ),
        IconButton(
          onPressed: () {
          }, 
          icon: Icon(Icons.refresh,size: 30,),
          ) ], ),

     Padding(
       padding: const EdgeInsets.all(20.0),
       child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
            Color.fromRGBO(104, 176, 171, 1),
              ),
              minimumSize: MaterialStateProperty.all<Size>(Size(120, 50)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: 
                BorderRadius.circular(10.0)
                )
              )
            ),
            onPressed: () => {},
            child: Text("Tiếp theo",style: TextStyle(
              fontSize: 17
            ), ),
        ),
          ),
     ]),  
          )
      );  
  }
}


  