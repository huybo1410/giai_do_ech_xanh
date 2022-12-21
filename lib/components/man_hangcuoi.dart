import 'package:flutter/material.dart';
class man_hangcuoi extends StatefulWidget {
  const man_hangcuoi({super.key});

  @override
  State<man_hangcuoi> createState() => _man_hangcuoiState();
}

class _man_hangcuoiState extends State<man_hangcuoi> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
          // Hang man 5,6
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 30, 8),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/leaf2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                child: TextButton(onPressed: () {
                  
                },
                child: Text('5',style: TextStyle(fontSize: 30,color: Colors.black),),),
              )
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: 
              Image(image: AssetImage('assets/fish1.png'),fit: BoxFit.cover,)
              ,width:60 ,height:60 ,)
            ),

             Padding(
               padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
               child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/leaf3.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                child: TextButton(onPressed: () {
                  
                },
                child: Text('6',style: TextStyle(fontSize: 30,color: Colors.black),),),
              )
             ),
          ],),
    ],);
  }
}