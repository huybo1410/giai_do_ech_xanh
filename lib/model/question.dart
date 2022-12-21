import 'dart:convert';

import 'package:flutter/material.dart';
class question_paper_model{
  String? id;
  int? Count;
  List<Questions>? questions;

question_paper_model(
  {
    required this.id,
    required this.Count,
     this.questions 

  });

 question_paper_model.fromJson(Map<String,dynamic >json) :
  id = json['id'] as String,
  Count = json['count'] as int,

  questions = (json['question'] as List).map((dynamic e) => Questions.fromJson(e  as Map<String,dynamic>)).toList();
  
 

 Map<String,dynamic>toJson(){
  final Map<String,dynamic> data = new Map<String,dynamic>();
  data['id'] = this.id;
  data['count'] = this.Count;
  
  return data;
 }
}


class Questions{
  String id;
  String question;
  List<Answers> answers;
  String? right_answers;

  Questions({ 
    required this.id,
    required this.question,
    required this.answers, 
    this.right_answers });

  Questions.fromJson(Map<String,dynamic> json) : 
    id = json['id'],
    question = json['question'],
    answers = (json['answers']as List).map((e) => Answers.fromJson(e)).toList(),
    right_answers = json['right_answer'];
  

Map<String,dynamic>toJson(){
  final Map<String,dynamic> data = new Map<String,dynamic>();
  data['id'] = this.id;
  data['question'] = this.question;
  if(this.answers != null){
    data['answers'] = this.answers.map((v) => v.toJson()).toList();
  }
  data['right_answer'] = this.right_answers;
  return data;
}

}

class Answers{
  String? identifier;
  String? answers;

  Answers ({ this.answers, this.identifier}); 
  
  Answers.fromJson(Map<String,dynamic>json) :
    identifier = json['identifier'],
    answers = json['answers'];

  

  Map<String,dynamic>toJson(){
    final Map<String,dynamic>data = new Map<String,dynamic>();
    data['identifier']= this.identifier;
    data['answers'] = this.answers;
    return data;
  }
}




