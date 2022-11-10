import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/main.dart';

class GamePlay extends StatefulWidget {
  const GamePlay({super.key});
  @override
  State<GamePlay> createState() =>_GamePlay();
}

class _GamePlay extends State<GamePlay> {
  

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Màn 1'),
      ),
      //drawer: Menu_button(),
      body:  Container(
        decoration: BoxDecoration(color: Color.fromRGBO(250, 243, 221, 1)),
        child: 
      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Text('                  '),
         Row(mainAxisAlignment: MainAxisAlignment.start,children: [
        Icon(Icons.access_alarm,color: Colors.red,size: 30,),
        Text('120s',style: TextStyle(color: Colors.red,fontSize: 20),),
      ],),
        // Icon(Icons.menu,size: 35,),
        
        Row(
          children: [
            Text('100 vàng',style: TextStyle(color: Colors.orange,fontSize: 18,fontStyle: FontStyle.italic),),
            Icon(Icons.add,color: Colors.orange,)
          ],
        ),
        
      ],),


     

      Text('Màn ...',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),

      Text('Câu hỏi số 1: .......................',style: TextStyle(fontSize: 15)),

      ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
            Color.fromRGBO(104, 176, 171, 1),
              ),
              minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: 
                BorderRadius.circular(30.0)
                )
              )
            ),
            onPressed: () => {},
            child: Text("Lựa chọn 1" ),
        ),

        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
            Color.fromRGBO(104, 176, 171, 1),
              ),
              minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: 
                BorderRadius.circular(30.0)
                )
              )
            ),
            onPressed: () => {},
            child: Text("Lựa chọn 2" ),
        ),

        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
            Color.fromRGBO(104, 176, 171, 1),
              ),
              minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: 
                BorderRadius.circular(30.0)
                )
              )
            ),
            onPressed: () => {},
            child: Text("Lựa chọn 3" ),
        ),

        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
            Color.fromRGBO(104, 176, 171, 1),
              ),
              minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: 
                BorderRadius.circular(30.0)
                )
              )
            ),
            onPressed: () => {},
            child: Text("Lựa chọn 4" ),
        ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                IconButton(
                onPressed: (){
                  showDialog(
                    // barrierDismissible: false,
                    context: context, 
                    builder: (BuildContext context)  {
                      return AlertDialog(
                        backgroundColor: Color.fromRGBO(200, 213, 185,1),
                        title: Text('Mua đáp án ?'), 
                        content: const Text('Bạn sẽ nhận được đáp án tương ứng với câu hỏi hiện tại !'),
                        actions: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Quy đổi: 200 vàng = 1 lượt'),
                                  IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(Icons.add))
                                ],
                              ),
                              Text('Bạn có muốn sử dụng?'),
                              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                    minimumSize: MaterialStateProperty.all<Size>(Size(100, 40))
                                  ),
                                  onPressed: (){}, 
                                  child: Text('Có')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                    minimumSize: MaterialStateProperty.all<Size>(Size(100, 40))
                                  ),
                                  onPressed: (){}, 
                                  child: Text('Không')),
                                )
                              ],),
                            ],
                          )
                        ],
                      );
                    });
                }, 
                icon: Icon(Icons.lightbulb,color: Color.fromRGBO(102,102,102, 1),)),
                Text('Mua đáp án',style: TextStyle(color: Color.fromRGBO(102,102,102, 1)),)
              ],),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.book,color: Color.fromRGBO(102,102,102, 1),)),
                Text('Cách chơi',style: TextStyle(color: Color.fromRGBO(102,102,102, 1)),)
              ],),
            )
          ],)

      ])
      ,)
      
      ); 
  }
}