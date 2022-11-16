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
              child: TextButton(
              style: ButtonStyle(
                // minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                //backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                //side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                //shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
              ),
              onPressed: (){
                 Navigator.of(context).pop();
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new GamePlay()));
              }, 
              child: Container(child:
              Image(image: AssetImage('assets/leaf1.png'),fit: BoxFit.cover,)
               ,width:90 ,height: 90,)
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: 
              Image(image: AssetImage('assets/fish1.png'),fit: BoxFit.cover,)
              ,width:60 ,height:60 ,)
            ),

             Padding(
               padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
               child: TextButton(
            style: ButtonStyle(
                
                //backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                //side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                //shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
            ),
            onPressed: (){}, 
            child: Container(child:
              Image(image: AssetImage('assets/leaf2.png'),fit: BoxFit.cover,)
               ,width:90 ,height: 90,)
            ),
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
              child: TextButton(
              style: ButtonStyle(
                // minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                // backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                // side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                // shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
              ),
              onPressed: (){}, 
              child: Container(child:
              Image(image: AssetImage('assets/leaf2.png'),fit: BoxFit.cover,)
               ,width:90 ,height: 90,)
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: 
              Image(image: AssetImage('assets/fish3.png'),fit: BoxFit.cover,)
              ,width:60 ,height:60 ,)
            ),

             Padding(
               padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
               child: TextButton(
            style: ButtonStyle(
                // minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                // backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                // side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                // shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
            ),
            onPressed: (){}, 
            child: Container(child:
              Image(image: AssetImage('assets/leaf1.png'),fit: BoxFit.cover,)
               ,width:90 ,height: 90,)
            ),
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
              child: TextButton(
              style: ButtonStyle(
                // minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                // backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                // side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                // shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
              ),
              onPressed: (){}, 
              child: Container(child:
              Image(image: AssetImage('assets/leaf1.png'),fit: BoxFit.cover,)
               ,width:90 ,height: 90,)
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: 
              Image(image: AssetImage('assets/fish1.png'),fit: BoxFit.cover,)
              ,width:60 ,height:60 ,)
            ),

             Padding(
               padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
               child: TextButton(
            style: ButtonStyle(
                // minimumSize: MaterialStatePropertyAll<Size>(Size(90,90)),
                // backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(143, 192, 169, 1)),
                // side: MaterialStatePropertyAll<BorderSide>(BorderSide(style: BorderStyle.solid)),
                // shadowColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.8))
            ),
            onPressed: (){}, 
            child: Container(child:
              Image(image: AssetImage('assets/leaf3.png'),fit: BoxFit.cover,)
               ,width:90 ,height: 90,)
            ),
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
