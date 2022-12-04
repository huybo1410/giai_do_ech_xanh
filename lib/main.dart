import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/First_page.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/view/Home_page.dart';
import 'package:giai_do_ech_xanh/view/Login_page.dart';
import 'package:giai_do_ech_xanh/view/pay_page.dart';

Future<void>main(List<String>args)async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DoAn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      initialRoute: 'Welcome',
      routes: {
        'Welcome':(context) => First_page(),
        'home':(context) => Home_page(),
      },
    );
  }
}

