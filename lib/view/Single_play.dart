import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/view/Cac_man_choi/GamePlay.dart';
import 'package:giai_do_ech_xanh/view/Cac_man_choi/GamePlay1.dart';
import 'package:giai_do_ech_xanh/view/Cac_man_choi/GamePlay2.dart';
import 'package:giai_do_ech_xanh/view/Cac_man_choi/GamePlay3.dart';
import 'package:giai_do_ech_xanh/view/Cac_man_choi/GamePlay4.dart';
import 'package:giai_do_ech_xanh/view/Cac_man_choi/GamePlay5.dart';
import 'package:giai_do_ech_xanh/view/pay_page.dart';

class Single_play extends StatefulWidget {
  const Single_play({super.key});
  @override
  State<Single_play> createState() => _Single_play();
}


class _Single_play extends State<Single_play> {
 
 
 

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
                  Navigator.of(context).popUntil((route) => route.isCurrent);
          Navigator.push(context,
               new MaterialPageRoute(builder: (context) => new GamePlay()));
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
                   Navigator.of(context).popUntil((route) => route.isCurrent);
          Navigator.push(context,
               new MaterialPageRoute(builder: (context) => new GamePlay1()));
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
                   Navigator.of(context).popUntil((route) => route.isCurrent);
          Navigator.push(context,
               new MaterialPageRoute(builder: (context) => new GamePlay3()));
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
                  Navigator.of(context).popUntil((route) => route.isCurrent);
          Navigator.push(context,
               new MaterialPageRoute(builder: (context) => new GamePlay2()));
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
                  Navigator.of(context).popUntil((route) => route.isCurrent);
          Navigator.push(context,
               new MaterialPageRoute(builder: (context) => new GamePlay4()));
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
                  Navigator.of(context).popUntil((route) => route.isCurrent);
          Navigator.push(context,
               new MaterialPageRoute(builder: (context) => new GamePlay5()));
                },
                child: Text('6',style: TextStyle(fontSize: 30,color: Colors.black),),),
              )
             ),
          ],),

          ],
        ),decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/Nen_man.jpg'),fit: BoxFit.cover)
        ),
        ),
    );
  }
}
