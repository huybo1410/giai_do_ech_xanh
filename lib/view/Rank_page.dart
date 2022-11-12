import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/main.dart';
import 'package:giai_do_ech_xanh/view/Single_play.dart';
import 'package:giai_do_ech_xanh/view/pay_page.dart';
import 'package:giai_do_ech_xanh/view/pvp_page.dart';

class Setting_page extends StatefulWidget {
  const Setting_page({super.key});
  @override
  State<Setting_page> createState() =>_Setting_page();
}

class _Setting_page extends State<Setting_page> {

 

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Menu_button(),
      appBar: AppBar(
        title: Text('Trang chủ'),
      ),
      //drawer: Menu_button(),
      body: 
     Container(
        color: Color.fromRGBO(250, 243,221, 1),
        child: ListView(
          children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
             child: Text('BẢNG XẾP HẠNG',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 30),
             textAlign: TextAlign.center,
             ),
             ),
           ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(child:
             Row(
               children: [
                 Expanded(child:Text('TOP 1:' ,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),flex: 1, ),
                 Expanded(child:Text('LỘC' ,style: TextStyle(fontSize: 20),) ,),
                 Expanded(child:Text('1000 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
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
                 Expanded(child:Text('999 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
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
                 Expanded(child:Text('888 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
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
                 Expanded(child:Text('NINH' ,style: TextStyle(fontSize: 20),) ,),
                 Expanded(child:Text('777 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
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
                 Expanded(child:Text('HIÊN' ,style: TextStyle(fontSize: 20),) ,),
                 Expanded(child:Text('666 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
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
                 Expanded(child:Text('NHÃ' ,style: TextStyle(fontSize: 20),) ,),
                 Expanded(child:Text('555 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
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
                 Expanded(child:Text('TRUNG' ,style: TextStyle(fontSize: 20),) ,),
                 Expanded(child:Text('444 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
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
                 Expanded(child:Text('YASUO' ,style: TextStyle(fontSize: 20),) ,),
                 Expanded(child:Text('333 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
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
                 Expanded(child:Text('LEE SIN' ,style: TextStyle(fontSize: 20),) ,),
                 Expanded(child:Text('222 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
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
                 Expanded(child:Text('YONE' ,style: TextStyle(fontSize: 20),) ,),
                 Expanded(child:Text('111 point' ,style: TextStyle(fontSize: 20),),flex: 1, ),
               ],
             ),
             height: 50,
             width: 700,
             color: Colors.amberAccent,
             ),
           ),
            
      ])
      )
      ); 
  }
}