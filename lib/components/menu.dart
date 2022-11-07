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
      
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Choi don'),leading: Icon(Icons.play_circle),
        onTap: (() {
           Navigator.of(context).popUntil((route) => route.isFirst);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Single_play()));
        }),
        ),
      ),
      

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Cách chơi'),leading: Icon(Icons.help),
        onTap: (() {
           Navigator.of(context).popUntil((route) => route.isFirst);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Guide_page()));
        }),),
      ),

       Padding(
         padding: const EdgeInsets.all(10.0),
         child: ListTile(
      title: Text('Thông tin trò chơi'),leading: Icon(Icons.info),
      onTap: (() {
        Navigator.of(context).popUntil((route) => route.isFirst);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Info_page()));
      }),
      ),
       ),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Đăng ký'),leading: Icon(Icons.manage_accounts),
        onTap: (() {
          Navigator.of(context).popUntil((route) => route.isFirst);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Signup_page()));
        }),
        ),
      ),

       Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Đăng Nhập'),leading: Icon(Icons.manage_accounts),
        onTap: (() {
          Navigator.of(context).popUntil((route) => route.isFirst);
           Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Login_page()));
        }),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Cài đặt'),leading: Icon(Icons.settings),
        onTap: (() {
           
        }),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Thoát trò chơi'),leading: Icon(Icons.keyboard_return),
        onTap: (() {
           
        }),
        ),
      ),

    ],)
    ,decoration: BoxDecoration(color: Color.fromRGBO(143, 192, 169,1)),)
    );
  }
}