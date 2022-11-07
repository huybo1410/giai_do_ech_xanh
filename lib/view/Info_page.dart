import 'package:flutter/material.dart';

class Info_page extends StatelessWidget {
  const Info_page ({super.key});

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(title: new Text("Thông tin trò chơi"),),
      body: new Text("Nội dung"),
    );
  }
}