import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/GamePlay.dart';
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
        return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Màn: ${data['man']}',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
          ),

      Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 15),
        child: Container(child: Text('${data['question']}',textAlign: TextAlign.center,style: TextStyle(fontSize: 25))),
      ),

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromRGBO(104, 176, 171, 1),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
              ),
              onPressed: () => {},
              child: Text('${data['answer1']}',style: TextStyle(fontSize: 21),),
          ),
      ),

        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromRGBO(104, 176, 171, 1),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
              ),
              onPressed: () => {},
              child: Text('${data['answer2']}',style: TextStyle(fontSize: 21)),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromRGBO(104, 176, 171, 1),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
              ),
              onPressed: () => {},
              child: Text('${data['answer3']}',style: TextStyle(fontSize: 21)),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromRGBO(104, 176, 171, 1),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
              ),
              onPressed: () => {},
              child: Text('${data['answer4']}',style: TextStyle(fontSize: 21)),
          ),
        ),
        ],);
      }
      return Text('loading...');
    });
  }
}