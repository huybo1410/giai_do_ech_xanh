import 'package:flutter/material.dart';
import 'package:giai_do_ech_xanh/view/Home_page.dart';
import 'package:giai_do_ech_xanh/view/Signup_page.dart';

class Create_Room extends StatefulWidget {
  const Create_Room({super.key});

  @override
  State<Create_Room> createState() => _Create_Room();
}

class _Create_Room extends State<Create_Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(250, 243, 221, 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.close,
                        size: 35,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Phòng Tạo',
                style: TextStyle(fontSize: 35, color: Colors.purple),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 230,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStatePropertyAll<Size>(Size(140, 40)),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromRGBO(104, 176, 171, 1)),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Tìm Kiếm',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                color: Colors.white,
                height: 380,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  maxLines: null,
                  expands: true,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStatePropertyAll<Size>(Size(100, 50)),
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(104, 176, 171, 1))),
                  onPressed: (() {}),
                  child: Text(
                    'Tạo Phòng',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
