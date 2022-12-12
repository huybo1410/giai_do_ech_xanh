import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/Account_page.dart';

import 'package:giai_do_ech_xanh/view/Home_page.dart';



import 'package:giai_do_ech_xanh/view/Report_page.dart';
import 'package:giai_do_ech_xanh/view/Setting_page.dart';



class Menu_button extends StatelessWidget {
  const Menu_button({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Drawer(child: 
    Container(child: 
    ListView(children: [
      DrawerHeader(
        child: Image(image: AssetImage('assets/menu_final.jpg'),fit: BoxFit.cover,),
        decoration: BoxDecoration(color: Colors.white),
        ),
      
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Tài Khoản',style: TextStyle(fontSize: 17),),leading: Icon(Icons.account_circle,color: Colors.black,),
        onTap: (() {
           Navigator.of(context).pop();
           Navigator.push(context,
                 MaterialPageRoute(builder: (context) => new Account_page()));
        }),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Trang chính',style: TextStyle(fontSize: 17),),leading: Icon(Icons.home,color: Colors.black,),
        onTap: (() {
           Navigator.of(context).pop();
           Navigator.push(context,
                 MaterialPageRoute(builder: (context) => new Home_page()));
        }),
        ),
      ),

      
      
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Cách chơi',style: TextStyle(fontSize: 17)),leading: Icon(Icons.help,color: Colors.black),
        onTap: (() {
          
          showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cách Chơi',style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
      
          content: const Text(
            'CHƠI ĐƠN:\n'
            '-Người chơi khởi đầu với màn\n'
              'đầu tiên.\n'

              '- Mỗi màn chơi với 4 câu hỏi liên\n'
              'tiếp.\n'

              '- Mỗi câu hỏi sẽ có 4 lựa chọn\n'

              '- Người chơi suy nghĩ và nhanh\n'
              'chóng chọn ra đáp án chính xác\n'
              'nhất\n'
              
              '- Hoàn thành 4 câu hỏi sẽ vượt\n'
              'qua màn chơi\n'

              '- Sai bất kỳ câu hỏi nào trong\n'
              'màn chơi hoặc hết thời gian trả\n'
              'lời người chơi sẽ thua cuộc ngay\n'
              'lập tức.'
              ),
          actions: <Widget>[
            
            TextButton(
              
              child: const Text('THOÁT'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
          
        }),),
      ),

       
       Padding(
         padding: const EdgeInsets.all(10.0),
         child: ListTile(
      title: Text('Thông tin trò chơi',style: TextStyle(fontSize: 17)),leading: Icon(Icons.info,color: Colors.black),
      onTap: (() {
         
         showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thông tin\n trò chơi',style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
      
          content: const Text(
            '- Với mục đích giúp mọi người vừa có thể giải trí vừa có thẻ học hỏi thêm được kiến thức mới. Chúng em đã đưa ra phương pháp mới, lập nên một game phù hợp với mọi lứa tuổi, một trò chơi trí tuệ vui nhộn với nhưng câu hỏi đời thường nhất nhất định làm cho các bạn phải tư duy suy nghĩ. Dự án được mang tên là game "Giải đố Ếch Xanh" được lấy cảm hứng từ các gameshow nổi tiếng như Ai là Triệu Phú, Nhanh Như Chớp.... Nếu muốn vừa được giải trí vừa kiểm tra lại kiến thức vừa thách thức bản thân hoặc muốn giải trí thi đấu cùng bạn bè thì đây là một game chắc chắn sẽ mang đến cảm giác thỏa mãn cho bạn.'
              ,style:TextStyle(),textAlign: TextAlign.justify,),
          actions: <Widget>[
            TextButton(
              child: const Text('thoát',style: TextStyle(fontSize: 15),),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushNamedAndRemoveUntil(context, 'Welcome', (route) => false);
              },
            ),
            
          ],
        );
      },
    );

      }),
      ),
       ),

      

      
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Cài đặt',style: TextStyle(fontSize: 17)),leading: Icon(Icons.settings,color: Colors.black),
        onTap: (() {
           Navigator.of(context).pop();
           Navigator.push(context,
                 MaterialPageRoute(builder: (context) => new Setting_page()));
        }),
        ),
      ),

       Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Báo cáo lỗi',style: TextStyle(fontSize: 17),),leading: Icon(Icons.report,color: Colors.black,),
        onTap: (() {
           Navigator.of(context).pop();
           Navigator.push(context,
                 MaterialPageRoute(builder: (context) => new Report_page()));
        }),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
        title: Text('Đăng xuất',style: TextStyle(fontSize: 17)),leading: Icon(Icons.logout,color: Colors.black),
        onTap: () => FirebaseAuth.instance.signOut(),
        ),
      ),

    ],)
    ,decoration: BoxDecoration(color: Color.fromRGBO(143, 192, 169,1)),)
    );
  }
}