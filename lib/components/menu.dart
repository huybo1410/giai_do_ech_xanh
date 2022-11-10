import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/Guide_page.dart';
import 'package:giai_do_ech_xanh/view/Info_page.dart';
import 'package:giai_do_ech_xanh/view/Login_page.dart';
import 'package:giai_do_ech_xanh/view/Signup_page.dart';
import 'package:giai_do_ech_xanh/view/Single_play.dart';

class Menu_button extends StatelessWidget {
  const Menu_button({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Drawer(child: 
    Container(child: 
    ListView(children: [
      DrawerHeader(
        child: Image(image: AssetImage('assets/menu1.jpg'),fit: BoxFit.cover,),
        decoration: BoxDecoration(color: Colors.white),
        ),
      
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Tài Khoản',style: TextStyle(fontSize: 17),),leading: Icon(Icons.account_circle,color: Colors.black,),
        onTap: (() {
           
        }),
        ),
      ),
      

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Cách chơi',style: TextStyle(fontSize: 17)),leading: Icon(Icons.help,color: Colors.black),
        onTap: (() {
           Navigator.of(context).popUntil((route) => route.isCurrent);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Guide_page()));
        }),),
      ),

       Padding(
         padding: const EdgeInsets.all(10.0),
         child: ListTile(
      title: Text('Thông tin trò chơi',style: TextStyle(fontSize: 17)),leading: Icon(Icons.info,color: Colors.black),
      onTap: (() {
        
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Info_page()));
      }),
      ),
       ),

      

      
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Cài đặt',style: TextStyle(fontSize: 17)),leading: Icon(Icons.settings,color: Colors.black),
        onTap: (() {
           
        }),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Đăng xuất',style: TextStyle(fontSize: 17)),leading: Icon(Icons.logout,color: Colors.black),
        onTap: (() {
           
        }),
        ),
      ),

    ],)
    ,decoration: BoxDecoration(color: Color.fromRGBO(143, 192, 169,1)),)
    );
  }
}