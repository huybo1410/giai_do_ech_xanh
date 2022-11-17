import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/Home_page.dart';
import 'package:giai_do_ech_xanh/view/Signup_page.dart';
class Password_page extends StatefulWidget {
  const Password_page({super.key});

 
  

  @override
  State<Password_page> createState() => _Password_page();
}

class _Password_page extends State<Password_page> {
  
bool _showpass= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
          title: Text('Test Code'),
        ),
        body: Container(
          constraints:  BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243,221, 1),
          child:Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
            Text('Thay đổi mật khẩu',
            style: TextStyle(
              fontSize: 30,
            ),
            ),

            SizedBox(
            height: 20,
            ),

            Padding(
             padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
             child: Stack(alignment: AlignmentDirectional.centerEnd,
               children: [
                 TextField(
                 obscureText: !_showpass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mật khẩu mới'
                  ),
                 ),
                 GestureDetector(
            onTap: LessShowPass,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text('Show',style: TextStyle(color: Colors.blue),),
            ),
          )
               ],
             ),
           ),

           Padding(
             padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
             child: Stack(alignment: AlignmentDirectional.centerEnd,
               children: [
                 TextField(
                 obscureText: !_showpass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nhập lại mật khẩu'
                  ),
                 ),
                 GestureDetector(
            onTap: LessShowPass,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text('Show',style: TextStyle(color: Colors.blue),),
            ),
          )
               ],
             ),
           ),


          

           Row(children: [
       Padding(
         padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
         child: Container(
          height: 40,
          width: 180,
           child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mã xác nhận',
                  ),
                  
                 ),
         ),
       ),
        IconButton(
          onPressed: () {
          }, 
          icon: Icon(Icons.refresh,size: 30,),
          ) ], ),

     Padding(
       padding: const EdgeInsets.all(20.0),
       child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
            Color.fromRGBO(104, 176, 171, 1),
              ),
              minimumSize: MaterialStateProperty.all<Size>(Size(120, 50)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: 
                BorderRadius.circular(10.0)
                )
              )
            ),
            onPressed: () => {},
            child: Text("Thay đổi",style: TextStyle(
              fontSize: 17
            ), ),
        ),
          ),
     ]),
          
          )
        
      );
      
      
     
  }
  void LessShowPass(){
    setState((){
      _showpass=!_showpass;
    });
    
}

}
  