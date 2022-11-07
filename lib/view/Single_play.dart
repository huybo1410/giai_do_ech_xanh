import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/view/GamePlay.dart';

class Single_play extends StatefulWidget {
  const Single_play({super.key});

 
  @override
  State<Single_play> createState() => _Single_play();
}


class _Single_play extends State<Single_play> {
 
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Chơi đơn'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
              child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
              ),
              onPressed: (){
                 //Navigator.of(context).popUntil((route) => route.isFirst);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new GamePlay()));
              }, 
              child: Text('1',style: TextStyle(fontSize: 20,color: Colors.black),)
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward,size: 40,),
            ),

             Padding(
               padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
               child: ElevatedButton(
            style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
            ),
            onPressed: (){}, 
            child: Text('2',style: TextStyle(fontSize: 20,color: Colors.black),)
            ),
             ),
          ],),

          //Mui ten xuong
          Padding(
            padding: const EdgeInsets.fromLTRB(190, 8, 0, 8),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Icon(Icons.arrow_downward,size: 40,)
            ],),
          ),

          // Hang man 3,4
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 30, 8),
              child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
              ),
              onPressed: (){}, 
              child: Text('4',style: TextStyle(fontSize: 20,color: Colors.black),)
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_back,size: 40,),
            ),

             Padding(
               padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
               child: ElevatedButton(
            style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
            ),
            onPressed: (){}, 
            child: Text('3',style: TextStyle(fontSize: 20,color: Colors.black),)
            ),
             ),
          ],),

           //Mui ten xuong
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 190, 8),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Icon(Icons.arrow_downward,size: 40,)
            ],),
          ),

          // Hang man 5,6
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 30, 8),
              child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
              ),
              onPressed: (){}, 
              child: Text('5',style: TextStyle(fontSize: 20,color: Colors.black),)
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward,size: 40,),
            ),

             Padding(
               padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
               child: ElevatedButton(
            style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
            ),
            onPressed: (){}, 
            child: Text('6',style: TextStyle(fontSize: 20,color: Colors.black),)
            ),
             ),
          ],),

          ],
        ),decoration: BoxDecoration(color: Color.fromRGBO(200, 213, 185,1)),
        ),
    );
  }
}
