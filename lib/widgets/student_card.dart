// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:student_app/classes/student.dart';
import 'package:student_app/widgets/student_info.dart';

// ignore: must_be_immutable
class StudentCard extends StatelessWidget {
  Student std;
  VoidCallback deleteStd;
  StudentCard({super.key, required this.std, required this.deleteStd});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StudentInfo(std: std)),
        );
      },
      onHorizontalDragEnd: (details) {
        deleteStd();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          color: Colors.blueGrey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Name:',
                          style: TextStyle(fontSize: 25, color: Colors.blue),
                        ),
                        Text(
                          std.name,
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'id:',
                          style: TextStyle(fontSize: 25, color: Colors.blue),
                        ),
                        Text(
                          std.id,
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset('images/person.jpg', height: 80, width: 80),
                    IconButton(
                      onPressed: () {
                        deleteStd();
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
