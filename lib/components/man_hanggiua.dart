import 'package:flutter/material.dart';
class man_hanggiua extends StatefulWidget {
  const man_hanggiua({super.key});

  @override
  State<man_hanggiua> createState() => _man_hanggiuaState();
}

class _man_hanggiuaState extends State<man_hanggiua> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
          // Hang man 3,4
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 30, 8),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/leaf1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                child: TextButton(onPressed: () {
                  
                },
                child: Text('4',style: TextStyle(fontSize: 30,color: Colors.black),),),
              )
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: 
              Image(image: AssetImage('assets/fish3.png'),fit: BoxFit.cover,)
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
                child: Text('3',style: TextStyle(fontSize: 30,color: Colors.black),),),
              )
             ),
          ],),

           //Mui ten xuong
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 220, 8),
            child: Container(child: 
              Image(image: AssetImage('assets/fish2.png'),fit: BoxFit.cover,)
              ,width:60 ,height:60 ,)
          ),
    ],);
  }
}