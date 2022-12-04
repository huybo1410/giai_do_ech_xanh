import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});
  @override
  State<History> createState() => _History();
}

class _History extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243, 221, 1),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    'LỊCH SỬ',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Màn 2:',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Số câu trả lời đúng ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
