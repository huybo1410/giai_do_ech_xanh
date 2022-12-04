import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup_page extends StatefulWidget {
  
 
  @override
  State<Signup_page> createState() => _Signup_page();
}


class _Signup_page extends State<Signup_page> {
 
 bool isChecked=true;
 

    TextEditingController _nameController =  TextEditingController();
    TextEditingController _emailController =  TextEditingController();
    TextEditingController _passController =  TextEditingController();
    TextEditingController _repassController =  TextEditingController();
    TextEditingController _phoneController =  TextEditingController();
    final _auth = FirebaseAuth.instance;
  
  
  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      body:  Container(
        constraints: BoxConstraints.expand(),
        color: Color.fromRGBO(250, 243, 221, 1),
       child: SingleChildScrollView(child: 
       Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 8),
              child: IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon: Icon(Icons.close,size: 40,)),
            ),
          ],),


          Padding(padding: EdgeInsets.all(30)),
      Text('ĐĂNG KÝ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
        Icon(Icons.person,size: 80,),

        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                labelText: 'Tài khoản',
                border: OutlineInputBorder(borderRadius: 
                 BorderRadius.circular(10)
             ),
                
                ),
              
            ),
          ),width: 350,height: 50,
        ),

         Container(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: _passController,
              style: TextStyle(fontSize: 15),
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mật khẩu',
                border: OutlineInputBorder(borderRadius: 
                 BorderRadius.circular(10)
                ),
    
                ),
        ),
           ),width: 350,height: 50,
         ),

         Container(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: _repassController,
              style: TextStyle(fontSize: 15),
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Nhập lại mật khẩu',
                border: OutlineInputBorder(borderRadius: 
                 BorderRadius.circular(10)
                ),
    
                ),
        ),
           ),width: 350,height: 50,
         ),

         Container(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: _phoneController,
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                labelText: 'Số điện thoại',
                border: OutlineInputBorder(borderRadius: 
                 BorderRadius.circular(10)
                  ),
                ),
        ),
           ),width: 350,height: 50,
         ),

         Container(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                labelText: 'Email',
               border: OutlineInputBorder(borderRadius: 
                 BorderRadius.circular(10)
               )
                ),
        ),
           ),width: 350,height: 50,
         ),

        Container(
          child: Row(children: [Checkbox(
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool? value){
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text('chấp nhận đăng kí tài khoản'),
          ],
          ),width: 350,height: 50,
        ),

        Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
             ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(
          Color.fromRGBO(104, 176, 171, 1)
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: 
              BorderRadius.circular(30.0)
              )
            )
          ),
          onPressed: () async{

            try{
              final newUser = _auth.createUserWithEmailAndPassword(email: _emailController.text, password: _passController.text);
              if(newUser !=null){
                Navigator.pop(context,'Dang ky thanh cong!');
              }else{
                final snackBar = SnackBar(content: Text('Tai khoan nay khong hop le'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            }catch(e){
              final snackBar = SnackBar(content: Text('Co loi xay ra !'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }

          },
          child: const Padding(padding: EdgeInsets.fromLTRB(18, 13, 18, 13),
          child: Text("ĐĂNG KÝ",),
          ),
        ),
        
        ],  
    )
       ,)
    )
      
      ); 
  }
}
