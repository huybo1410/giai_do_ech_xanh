import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:giai_do_ech_xanh/view/pvp_GamePlay.dart';
import 'package:lottie/lottie.dart';
class Find_page extends StatefulWidget {
  const Find_page({super.key});

 
  

  @override
  State<Find_page> createState() => _Find_page();
}

class _Find_page extends State<Find_page> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      
      body:  Container(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text('...Tìm Trận...',style: TextStyle(fontFamily: 'MyFont',fontSize: 30,color: Color.fromRGBO(74, 124, 89, 1)))
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
              minimumSize: MaterialStatePropertyAll<Size>(Size(120, 50))
            ),
            onPressed: (){
              Navigator.of(context).pop();
            }, 
            child: Text('Hủy tìm',style: TextStyle(fontSize: 18),)),
        ),

        IconButton(
          onPressed: (){
            Navigator.of(context).popUntil((route) => route.isCurrent);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new pvp_GamePlay()));
          }, 
          icon: Icon(Icons.play_arrow)),


        Padding(
          padding: const EdgeInsets.fromLTRB(8, 50, 8, 15),
          child: SpinKitCircle(
            // color: Color.fromRGBO(250, 243, 221, 1),
            size: 150.0,
            itemBuilder: (context, index) {
              final colors = [Color.fromRGBO(250, 243, 221, 1),Colors.green];
              final color = colors[index % colors.length];
              return DecoratedBox(
                decoration: BoxDecoration(color: color));
            },
            
            ),
        ),

        
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 60, 8, 8),
          child: Container(child: Lottie.asset('assets/frog.json',fit: BoxFit.cover),width: 300,height: 200,),
        )

      ],)
      ,decoration: BoxDecoration(color: Color.fromRGBO(200, 213, 185, 1)),
      )
    );
}
}