import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/History_page.dart';
import 'package:giai_do_ech_xanh/view/Home_page.dart';
import 'package:giai_do_ech_xanh/view/Signup_page.dart';
class Account_page extends StatefulWidget {
  const Account_page({super.key});

 
  

  @override
  State<Account_page> createState() => _Account_page();
}

class _Account_page extends State<Account_page> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body:  Container(
        constraints: BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243,221, 1),
        child: Column(children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              icon: Icon(Icons.close,size: 45,)
              ),
            ),
            ],),


          SizedBox(height: 20,),
          Text('THÔNG TIN\nTÀI KHOẢN',style: TextStyle(color: Colors.red,fontSize: 20),),
          
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text('Tài khoản:',style: TextStyle(fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text('admin123:',style: TextStyle(fontSize: 18),),
              ),
            ],
          ),

          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text('Email:',style: TextStyle(fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Text('admin123@email.com',style: TextStyle(fontSize: 18),),
              ),
            ],
          ),

          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text('số điện thoại:',style: TextStyle(fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text('0123345567',style: TextStyle(fontSize: 18),),
              ),
            ],
          ),
SizedBox(height: 20,),
Container(
  height: 300,
  width: 350,
  color: Colors.yellow,
),

Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 40, 8, 8),
            child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.blue,
              ),
              minimumSize: MaterialStateProperty.all<Size>(Size(120, 50)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: 
                BorderRadius.circular(5.0)
                )
              )
            ),
            onPressed: () => {},
            child: Text("Chỉnh sửa",style: TextStyle(fontSize: 18), ),
        ),
          ),
        
         Padding(
           padding: const EdgeInsets.fromLTRB(50, 40, 8, 8),
           child: ElevatedButton(
            style: 
            ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.blue
              ),
              minimumSize: MaterialStateProperty.all<Size>(Size(120, 50)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: 
                BorderRadius.circular(5.0)
                )
              )
            ),
            onPressed: () => {
               Navigator.push(context,new MaterialPageRoute(builder: (context) => new History()))
            },child: Text("Lịch sử",style: TextStyle(fontSize: 18)),
        ),
         )
        
        ],)

        ],),
      )
       ); 
  }

  
}


  