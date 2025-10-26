import 'package:flutter/material.dart';
import '../widgets/student_card.dart' show StudentCard;
import 'home_page.dart';

int selectedIndex = -1;

class ShowStudents extends StatefulWidget {
  const ShowStudents({super.key});

  @override
  State<ShowStudents> createState() => _ShowStudentsState();
}

class _ShowStudentsState extends State<ShowStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('students list'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) => StudentCard(
          std: students[index],
          deleteStd: () {
            students.removeAt(index);
            setState(() {});
          },
        ),
      ),
    );
  }
}
