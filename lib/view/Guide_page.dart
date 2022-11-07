import 'package:flutter/material.dart';

class Guide_page extends StatelessWidget {
  const Guide_page ({super.key});

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(title: new Text("Hướng dẫn cách chơi"),),
      body: new Text("Noi Dung"),
    );
  }
}