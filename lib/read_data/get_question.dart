import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Get_question extends StatelessWidget {
  const Get_question({super.key, required this.documentId});
  final String documentId;

  @override
  Widget build(BuildContext context) {
  CollectionReference question = FirebaseFirestore.instance.collection('single');

    return FutureBuilder<DocumentSnapshot>(
      future: question.doc(documentId).get(),
      builder: (context,snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        Map<String,dynamic>data = snapshot.data!.data() as Map<String,dynamic>;
        return Text('Cau hoi la: ${data['question']}');
      }
      return Text('loading...');
    });
  }
}