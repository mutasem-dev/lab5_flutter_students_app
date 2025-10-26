import 'package:flutter/material.dart';
import 'package:student_app/classes/student.dart';
import 'package:student_app/widgets/home_page.dart';
import 'package:student_app/widgets/show_students.dart';
import 'package:student_app/widgets/student_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/show': (context) => ShowStudents(),
        '/info': (context) => StudentInfo(
          std: Student(address: '', id: '', name: '', phone: ''),
        ),
      },
    );
  }
}
