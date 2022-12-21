// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/man_hangcuoi.dart';
import 'package:giai_do_ech_xanh/components/man_hangdau.dart';
import 'package:giai_do_ech_xanh/components/man_hanggiua.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/read_data/get_question.dart';
import 'package:giai_do_ech_xanh/view/GamePlay.dart';
import 'package:giai_do_ech_xanh/view/pay_page.dart';

import 'package:giai_do_ech_xanh/model/User.dart';
class demo1 extends StatefulWidget {
  const demo1({super.key});
  @override
  State<demo1> createState() => _demo1();
}


class _demo1 extends State<demo1> {
 final user = FirebaseAuth.instance.currentUser;
  List<String> docIDs = [];
  Future getDocId() async{
    await FirebaseFirestore.instance.collection('single').get().then((snapshot) => snapshot.docs.forEach((element) {
      print(element.reference);
      docIDs.add(element.reference.id);

    }));

  }
  
  
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Menu_button(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Row(mainAxisAlignment: MainAxisAlignment.start,children: [
      Builder(builder: (context) => Container(
        child:  TextButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          }, 
          child: Icon(Icons.menu,size: 45,color: Colors.black,)),)),

        
      ],),
            // Dong tieu de
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                Text('Các Màn Chơi',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              ],),
            ),
            
            FutureBuilder(
              future: getDocId(),
              builder: ((context, snapshot) {
              return ListView.builder(
              shrinkWrap: true,
              itemCount: docIDs.length,
              itemBuilder: (context, index) {
              return ListTile(title: Get_question(documentId: docIDs[index],));
            },
            );
            })
            )
            

            


          ],
        ),decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/Nen_man.jpg'),fit: BoxFit.cover)
        ),
        ),
    );
  }
}
