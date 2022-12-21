import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  final String name;
  final String email;
  final String phone;

  User({
    this.id = '',
    required this.email,
    required this.name,
    required this.phone
  });

  Map<String, dynamic> toJson()=>{
    'id':id,
    'name': name,
    'email':email,
    'phone':phone
  };

  static User fromJson(Map<String,dynamic> json)=>  User(
    email: json['id'], name: json['name'], phone: json['phone']
    );
}