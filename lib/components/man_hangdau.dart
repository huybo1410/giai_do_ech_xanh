import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class man_hangdau extends StatefulWidget {
  const man_hangdau({super.key});

  @override
  State<man_hangdau> createState() => _man_hangdauState();
}

class _man_hangdauState extends State<man_hangdau> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Hang man 1,2
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
                child: Text('1',style: TextStyle(fontSize: 30,color: Colors.black),),),
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
                          image: AssetImage("assets/leaf2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                child: TextButton(onPressed: () {
                  
                },
                child: Text('2',style: TextStyle(fontSize: 30,color: Colors.black),),),
              )
             ),
          ],),

          //Mui ten xuong
          Padding(
            padding: const EdgeInsets.fromLTRB(220, 8, 0, 8),
            child: Container(child: 
              Image(image: AssetImage('assets/fish2.png'),fit: BoxFit.cover,)
              ,width:60 ,height:60 ,)
          ),
    ],);
  }
}