// // ignore_for_file: prefer_const_constructors

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:giai_do_ech_xanh/model/User.dart';

// class Demo extends StatefulWidget {
//   const Demo({super.key});

//   @override
//   State<Demo> createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   // final user = FirebaseAuth.instance.currentUser;
//   // List<String> docIDs = [];
//   // Future getDocId() async{
//   //   await FirebaseFirestore.instance.collection('user').get().then((snapshot) => snapshot.docs.forEach((element) {
//   //     print(element.reference);
//   //     docIDs.add(element.reference.id);

//   //   }));

//   // }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
      
//       body: Container(child: 
//       FutureBuilder(
//         future: getDocId(),
//         builder: (context, snapshot) {
//         return ListView.builder(
//         itemCount: docIDs.length,
//         itemBuilder: (context,index){
//           return ListTile(title: Text(docIDs[index]),);
//         }

//         );
//       },)
//       ,)
//     );
//   }

  
// }