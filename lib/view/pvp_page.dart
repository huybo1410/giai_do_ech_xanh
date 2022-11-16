import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/view/Create_room.dart';
import 'package:giai_do_ech_xanh/view/FindGame.dart';
import 'package:giai_do_ech_xanh/view/Rank_page.dart';
import 'package:giai_do_ech_xanh/view/pay_page.dart';
import 'package:giai_do_ech_xanh/view/pvp_GamePlay.dart';
class pvp_page extends StatefulWidget {
  const pvp_page({super.key});

 
  

  @override
  State<pvp_page> createState() => _pvp_page();
}

class _pvp_page extends State<pvp_page> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Menu_button(),
      
      body: Container(
      decoration: BoxDecoration(color: Color.fromRGBO(200, 213, 185,1))
      ,child: 
       Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
      Row(mainAxisAlignment: MainAxisAlignment.start,children: [
         Builder(builder: (context) => Container(
        child:  TextButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          }, 
          child: Icon(Icons.menu,size: 45,)),)),

        Expanded(child:Text('')),
        Text('Số trận win:   ',style: TextStyle(color: Colors.red,fontSize: 18,fontStyle: FontStyle.italic),),
        
      ],),

      Container(child:Image(image: AssetImage('assets/pvp.png'),fit: BoxFit.cover,) ,width: 300,height: 300,),

      Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5),child: 
      TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(104, 176, 171,1)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          minimumSize: MaterialStateProperty.all<Size>(Size(170, 65)),
          elevation: MaterialStateProperty.all<double>(8),
          shadowColor: MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.5))
        ),
        onPressed: (){
          Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Find_page()));
        }, 
        child: Text('Tìm trận',style: TextStyle(fontSize: 20),))
      ,),

      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5),child: 
         TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(104, 176, 171,1)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          minimumSize: MaterialStateProperty.all<Size>(Size(170, 65)),
          elevation: MaterialStateProperty.all<double>(8),
          shadowColor: MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.5))
        ),
        onPressed: (){
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Rank_page()));
        }, 
        child: Text('Bảng xếp hạng',style: TextStyle(fontSize: 20),))
         ,),

         Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5),child: 
      TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(104, 176, 171,1)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          minimumSize: MaterialStateProperty.all<Size>(Size(170, 65)),
          elevation: MaterialStateProperty.all<double>(8),
          shadowColor: MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.5))
        ),
        onPressed: (){
          Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Create_room()));
        }, 
        child: Text('Tạo Phòng',style: TextStyle(fontSize: 20),))
      ,),

         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
         Padding(padding: EdgeInsets.all(7),child: Text(''),),
         Padding(padding: EdgeInsets.all(7),child:  Icon(Icons.settings,size: 35,),)
         ],)

    ],)



    )
    );
}
}