import 'package:flutter/material.dart';
class Pay_page extends StatefulWidget {
  const Pay_page({super.key});

 
  @override
  State<Pay_page> createState() => _Pay_page();
}


class _Pay_page extends State<Pay_page> {
 
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Nạp vàng'),
      ),
      body: Container(
        color: Color.fromRGBO(250,  243, 221, 1),
         constraints: BoxConstraints.expand(),
        child: 
        Column(
            
          children:
         [
          Padding(
            padding: const EdgeInsets.all(13),
            child: Text('NẠP VÀNG',style: TextStyle(color: Colors.orange,fontSize: 30,fontWeight: FontWeight.bold),
  
            ),
          ),
          
          Container(
             width: 400,
             height: 50,
             
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Text('Nạp mệnh giá càng cao quy đổi vàng càng ưu đãi',style: TextStyle(color: Colors.red,
              ),
              textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(10),
              
            ),  
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

            Text('20.000 đồng',style: TextStyle(fontSize: 15),),
            Icon(Icons.money),

       Padding(
        padding: const EdgeInsets.fromLTRB(52, 20, 58, 20),
        child: Text('200 vàng',style: TextStyle(
            color: Colors.orangeAccent),
            ),
      ),
       
       
            ElevatedButton(
            style: ButtonStyle(
             backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.blueAccent
             ),
             shape: MaterialStatePropertyAll(
               RoundedRectangleBorder(borderRadius: 
               BorderRadius.circular(10)
               )
             )
            ),
            onPressed: () => {},
            child: const Padding(padding: EdgeInsets.fromLTRB(18, 13, 18, 13),
            child: Text("Nạp vàng",),
            ),
        ),

            
            ],),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

            Text('50.000 đồng',style: TextStyle(fontSize: 15),),
            Icon(Icons.money),

       Padding(
        padding: const EdgeInsets.fromLTRB(52, 20, 58, 20),
        child: Text('550 vàng',style: TextStyle(
            color: Colors.orangeAccent),
            ),
      ),
       
       
            ElevatedButton(
            style: ButtonStyle(
             backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.blueAccent
             ),
             shape: MaterialStatePropertyAll(
               RoundedRectangleBorder(borderRadius: 
               BorderRadius.circular(10)
               )
             )
            ),
            onPressed: () => {},
            child: const Padding(padding: EdgeInsets.fromLTRB(18, 13, 18, 13),
            child: Text("Nạp vàng",),
            ),
        ),

            
            ],),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

            Text('100.000 đồng',style: TextStyle(fontSize: 15),),
            Icon(Icons.money),

       Padding(
        padding: const EdgeInsets.fromLTRB(45, 20, 45, 20),
        child: Text('1200 vàng',style: TextStyle(
            color: Colors.orangeAccent),
            ),
      ),
       
       
            ElevatedButton(
            style: ButtonStyle(
             backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.blueAccent
             ),
             shape: MaterialStatePropertyAll(
               RoundedRectangleBorder(borderRadius: 
               BorderRadius.circular(10)
               )
             )
            ),
            onPressed: () => {},
            child: const Padding(padding: EdgeInsets.fromLTRB(18, 13, 18, 13),
            child: Text("Nạp vàng",),
            ),
        ),

            
            ],),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

            Text('200.000 đồng',style: TextStyle(fontSize: 15),),
            Icon(Icons.money),

       Padding(
        padding: const EdgeInsets.fromLTRB(45, 20, 45, 20),
        child: Text('2300 vàng',style: TextStyle(
            color: Colors.orangeAccent),
            ),
      ),
       
       
            ElevatedButton(
            style: ButtonStyle(
             backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.blueAccent
             ),
             shape: MaterialStatePropertyAll(
               RoundedRectangleBorder(borderRadius: 
               BorderRadius.circular(10)
               )
             )
            ),
            onPressed: () => {},
            child: const Padding(padding: EdgeInsets.fromLTRB(18, 13, 18, 13),
            child: Text("Nạp vàng",),
            ),
        ),

            
            ],),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

            Text('500.000 đồng',style: TextStyle(fontSize: 15),),
            Icon(Icons.money),

       Padding(
        padding: const EdgeInsets.fromLTRB(45, 20, 45, 20),
        child: Text('5700 vàng',style: TextStyle(
            color: Colors.orangeAccent),
            ),
      ),
       
       
            ElevatedButton(
            style: ButtonStyle(
             backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.blueAccent
             ),
             shape: MaterialStatePropertyAll(
               RoundedRectangleBorder(borderRadius: 
               BorderRadius.circular(10)
               )
             )
             ),
            onPressed: () => {},
            child: const Padding(padding: EdgeInsets.fromLTRB(18, 13, 18, 13),
            child: Text("Nạp vàng",),
            ),
        ),

            
            ],),
          ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Chọn phương thức thanh toán',style: TextStyle(color: Colors.red),),
            ),
         
           Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Padding(
             padding: const EdgeInsets.all(2),
             child: ElevatedButton(
              style: ButtonStyle(
               backgroundColor: MaterialStatePropertyAll<Color>(
              Colors.white
               ),
               shape: MaterialStatePropertyAll(
                 RoundedRectangleBorder(borderRadius: 
                 BorderRadius.circular(0)
                 )
               )
              ),
              onPressed: () => {},
              child: const Padding(padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Text("Ngân Hàng",style: TextStyle(color: Colors.orange,fontSize: 17),),
              ),
        ),
           ),

         Padding(
           padding: const EdgeInsets.all(2),
           child: ElevatedButton(
              style: ButtonStyle(
               backgroundColor: MaterialStatePropertyAll<Color>(
              Colors.white
               ),
               shape: MaterialStatePropertyAll(
                 RoundedRectangleBorder(borderRadius: 
                 BorderRadius.circular(0)
                 )
               )
              ),
              onPressed: () => {},
              child: const Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text("QR PAY",style: TextStyle(color: Colors.orange,fontSize: 17),),
              ),
        ),
         ),

           Padding(
             padding: const EdgeInsets.all(2),
             child: ElevatedButton(
              style: ButtonStyle(
               backgroundColor: MaterialStatePropertyAll<Color>(
              Colors.white
               ),
               shape: MaterialStatePropertyAll(
                 RoundedRectangleBorder(borderRadius: 
                 BorderRadius.circular(0)
                 )
               )
              ),
              onPressed: () => {},
              child: const Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text("MOMO",style: TextStyle(color: Colors.orange,fontSize: 17),),
              ),
        ),
           )
          

        
           ],) 
          
         
        ]
        ),
      )
    );
  }
}
    
  
