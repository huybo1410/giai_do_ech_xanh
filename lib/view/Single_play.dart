import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/view/GamePlay.dart';
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

          ],
        ),decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/Nen_man.jpg'),fit: BoxFit.cover)
        ),
        ),
    );
  }
}
