import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:giai_do_ech_xanh/components/menu.dart';
import 'package:giai_do_ech_xanh/main.dart';
import 'package:giai_do_ech_xanh/view/Single_play.dart';
import 'package:giai_do_ech_xanh/view/pay_page.dart';
import 'package:giai_do_ech_xanh/view/pvp_page.dart';

class Setting_page extends StatefulWidget {
  const Setting_page({super.key});
  @override
  State<Setting_page> createState() =>_Setting_page();
}

class _Setting_page extends State<Setting_page> {

  double _currentSliderValue = 50;
  bool light=false;
final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
       
        if (states.contains(MaterialState.selected)) {
          return Colors.amber;
        }
        
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        
        if (states.contains(MaterialState.selected)) {
          return Colors.amber.withOpacity(0.54);
        }
        
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade400;
        }
        
        return null;
      },
    );

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        
      ),
      //drawer: Menu_button(),
      body: 
      Container(
         constraints: BoxConstraints.expand(),
         color: Color.fromRGBO(250, 243,221, 1),
        child: Column(        
          children: [
    Text('CÀI ĐẶT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center,),

Padding(
  padding: const EdgeInsets.all(5.0),
  child:   Row(
    children: [
      Text('Âm thanh:',style: TextStyle(fontSize: 20),),

      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        activeColor: Colors.black,
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
    ),
      )
    ],
  ),
),


Padding(
  padding: const EdgeInsets.all(5.0),
  child:   Row(
    children: [
      Text('Rung:',style: TextStyle(fontSize: 20),),

       Padding(
         padding: const EdgeInsets.all(10.0),
         child: Switch(
      value: light,
      overlayColor: overlayColor,
      trackColor: trackColor,
      thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
      onChanged: (bool value) {
          setState(() {
            light = value;
          });
      },
    ),
       )
    ],
  ),
)
        ],
        ),
      )
      ); 
  }
}
>>>>>>> 64f5eee853bd2fb4ce4f5cb5433149ca79fd79e9
