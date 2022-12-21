import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/main.dart';
import 'package:giai_do_ech_xanh/view/Single_play.dart';
import 'package:giai_do_ech_xanh/view/pay_page.dart';
import 'package:giai_do_ech_xanh/view/pvp_page.dart';

class Rank_page extends StatefulWidget {
  const Rank_page({super.key});
  @override
  State<Rank_page> createState() =>_Rank_page();
}

class _Rank_page extends State<Rank_page> {

 

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: 
     Container(
        color: Color.fromRGBO(250, 243,221, 1),
        child: Column(
          children: [
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
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
             child: Text('BẢNG XẾP HẠNG',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 30),
             textAlign: TextAlign.center,
             ),
             ),
           ),
            ListView(
              shrinkWrap: true,
              children: [
               

               

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 1:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('LỘC' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('1000 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 2:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('HUY' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('999 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 3:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('NHÂN' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('888 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 4:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('Người lạ' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('777 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 5:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('Người lạ' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('666 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 6:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('Người lạ' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('555 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 7:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('Người lạ' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('444 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 8:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('Người lạ' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('333 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 9:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('Người lạ' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('222 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(child:
                 Row(
                   children: [
                     Expanded(child:Text('TOP 10:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                     Expanded(child:Text('Người lạ' ,style: TextStyle(fontSize: 20),) ,),
                     Expanded(child:Text('111 Trận thắng' ,style: TextStyle(fontSize: 20),),flex: 1, ),
                   ],
                 ),
                 height: 50,
                 width: 700,
                 color: Colors.amberAccent,
                 ),
               ),
                
      ]),
          ],
        )
      )
      ); 
  }
}