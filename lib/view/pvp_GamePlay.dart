import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';

class pvp_GamePlay extends StatefulWidget {
  const pvp_GamePlay({super.key});

 
  

  @override
  State<pvp_GamePlay> createState() => _pvp_GamePlay();
}

class _pvp_GamePlay extends State<pvp_GamePlay> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(

      ),
      
      body:  Container(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

            Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                child: Text('Người chơi 1'),
              ),
              Row(children: [
                Icon(Icons.circle),
              Icon(Icons.circle),
              Icon(Icons.circle_outlined),
              ],)
            ],),
            
            Icon(Icons.account_circle_outlined,size: 70,)
          ],)

          ,Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            Icon(Icons.alarm,color: Colors.red,),
          Text('30s',style: TextStyle(color: Colors.red,fontSize: 20),),
          ],),

          Text('Câu hỏi số 1:.....................',style: TextStyle(fontSize: 20)),

          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(154,102,254, 1)),
              minimumSize: MaterialStatePropertyAll<Size>(Size(250, 50)),
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
            ),
            onPressed: (){}, 
            child: Text('Lựa chọn 1')
            ),


          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(154,102,254, 1)),
              minimumSize: MaterialStatePropertyAll<Size>(Size(250, 50)),
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
            ),
            onPressed: (){}, 
            child: Text('Lựa chọn 2')
            ),


          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(154,102,254, 1)),
              minimumSize: MaterialStatePropertyAll<Size>(Size(250, 50)),
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
            ),
            onPressed: (){}, 
            child: Text('Lựa chọn 3')
            ),


          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(154,102,254, 1)),
              minimumSize: MaterialStatePropertyAll<Size>(Size(250, 50)),
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: 
                  BorderRadius.circular(30.0)
                  )
                )
            ),
            onPressed: (){}, 
            child: Text('Lựa chọn 4')
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Icon(Icons.account_circle_outlined,size: 70,),

            Column(children: [
              
               Row(children: [
                Icon(Icons.circle),
              Icon(Icons.circle_outlined),
              Icon(Icons.circle_outlined),
              ],),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Text('Người chơi 2'),
              ),
             
            ],),
            
            
          ],)

        ],
       )
      ,decoration: BoxDecoration(color: Color.fromRGBO(250, 243,221, 1)),
      )
    );
}
}