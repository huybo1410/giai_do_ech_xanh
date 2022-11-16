import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/main.dart';
import 'package:giai_do_ech_xanh/view/Single_play.dart';
import 'package:giai_do_ech_xanh/view/pay_page.dart';
import 'package:giai_do_ech_xanh/view/pvp_page.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});
  @override
  State<Home_page> createState() =>_Home_page();
}

class _Home_page extends State<Home_page> {
  

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Menu_button(),
      // appBar: AppBar(
      //   title: Text('Trang chủ'),
      // ),
      //drawer: Menu_button(),
      body:  Container(
      decoration: BoxDecoration(color: Color.fromRGBO(200, 213, 185,1))
      ,child: 
       Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
      Row(mainAxisAlignment: MainAxisAlignment.start,children: [
      Builder(builder: (context) => Container(
        child:  TextButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          }, 
          child: Icon(Icons.menu,size: 45,color: Colors.black,)),)),

        Expanded(child:Text('')),
        Text('100 vàng',style: TextStyle(color: Colors.orange,fontSize: 18,fontStyle: FontStyle.italic),),
        IconButton(
          onPressed: (){
            Navigator.of(context).popUntil((route) => route.isCurrent);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Pay_page()));
          }, 
          icon: Icon(Icons.add,color: Colors.orange,))
      ],),

      Container(child:Image(image: AssetImage('assets/LogoDoAn.png'),fit: BoxFit.cover,) ,width: 300,height: 300,),

      Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5),child: 
      TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(104, 176, 171,1)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          minimumSize: MaterialStateProperty.all<Size>(Size(200, 75)),
          elevation: MaterialStateProperty.all<double>(8),
          shadowColor: MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.5))
        ),
        onPressed: (){
          Navigator.of(context).popUntil((route) => route.isCurrent);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Single_play()));
        }, 
        child: Text('Chơi đơn',style: TextStyle(fontSize: 20),))
      ,),

      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5),child: 
         TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(104, 176, 171,1)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          minimumSize: MaterialStateProperty.all<Size>(Size(200, 75)),
          elevation: MaterialStateProperty.all<double>(8),
          shadowColor: MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.5))
        ),
        onPressed: (){
          Navigator.of(context).popUntil((route) => route.isCurrent);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new pvp_page()));
        }, 
        child: Text('Đối Kháng',style: TextStyle(fontSize: 20),))
         ,),



         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: IconButton(onPressed: () {
            showDialog<void>(
      context: context,
      builder: (BuildContext context) {
          return AlertDialog(
            title: 
               Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Hãy nhận ngay:',style: TextStyle(color: Colors.red,fontSize: 20),),

                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, icon: Icon(Icons.close,),
                  )
          
                ],
              ),
            
            content: const Text('00:00:00',style:TextStyle(fontSize: 30) ,textAlign: TextAlign.center,),
                backgroundColor: Color.fromRGBO(250, 243,221, 1),
            actions: <Widget>[
             
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('1 lượt mua đáp án',style: TextStyle(fontSize: 15),),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ],
          );
      },
    );
          }, icon: Icon(Icons.calendar_month,size: 35)),
        ),


         Padding(padding: EdgeInsets.all(7),child:  Icon(Icons.settings,size: 35,),)
         ],)

    ],)



    )
      
      ); 
  }
}