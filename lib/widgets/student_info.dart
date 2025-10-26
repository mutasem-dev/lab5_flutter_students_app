// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:student_app/classes/student.dart';

class StudentInfo extends StatelessWidget {
  Student std;
  StudentInfo({super.key, required this.std});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student info'), backgroundColor: Colors.blue),
      body: Text(std.toString(), style: TextStyle(fontSize: 25)),
    );
  }
}
