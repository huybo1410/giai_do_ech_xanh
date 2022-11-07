import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/First_page.dart';
import 'package:giai_do_ech_xanh/components/menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
      drawer: Menu_button(),
      appBar: AppBar(
        
        title: Text('Do An'),
      ),
      body: Container(child: First_page(),) 
      
      )
    );
  }
}

