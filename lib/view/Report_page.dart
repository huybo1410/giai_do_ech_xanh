import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/Home_page.dart';
import 'package:giai_do_ech_xanh/view/Signup_page.dart';
class Report_page extends StatefulWidget {
  const Report_page({super.key});

 
  

  @override
  State<Report_page> createState() => _Report_page();
}

class _Report_page extends State<Report_page> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Container(
       constraints: BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243,221, 1),
        child: Column(children: [
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Text('BÁO CÁO LỖI\n TRÒ CHƠI',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
         ),
         
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 20, 10, 20),
              child: Text('Tên lỗi game:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            ),
             Container(
              color: Colors.white,
          width: 200,
          height: 50,
          child: TextField(  
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ), 
          ),
        ),
          ],
        ),
       
         Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 27, 50),
              child: Text('Chi tiết lỗi:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Container(
                color: Colors.white,
          width: 200,
          height:300,
          child: Expanded(
            child: TextField(  
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    
                  ),
                ),
                style: TextStyle(fontSize: 14,height: 2.0),
                maxLines: null, expands: true,
                
               
                
            ),
          ),
        ),
            ),  
            
            ],), 
          
        ElevatedButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Xác nhận',style: TextStyle(fontSize: 15),),
                  onPressed: () {
                   
                  },
                ),
       
       ],),

      )  
      );  
  }
}


  