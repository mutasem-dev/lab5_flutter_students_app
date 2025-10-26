import 'package:flutter/material.dart';
import 'package:student_app/classes/student.dart';
import 'package:student_app/widgets/show_students.dart';

List<Student> students = [];
TextEditingController nameController = TextEditingController();
TextEditingController idController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController phoneController = TextEditingController();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('My info', style: TextStyle(color: Colors.white)),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/show');
            },
            child: Text('show'),
          ),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(label: Text('name')),
          ),
          TextField(
            controller: idController,
            decoration: InputDecoration(label: Text('id')),
          ),
          TextField(
            controller: addressController,
            decoration: InputDecoration(label: Text('address')),
          ),
          TextField(
            controller: phoneController,
            decoration: InputDecoration(label: Text('phone')),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                if (nameController.text.isEmpty ||
                    idController.text.isEmpty ||
                    addressController.text.isEmpty ||
                    phoneController.text.isEmpty) {
                  return;
                }
                students.add(
                  Student(
                    name: nameController.text,
                    id: idController.text,
                    address: addressController.text,
                    phone: phoneController.text,
                  ),
                );
                nameController.clear();
                idController.clear();
                addressController.clear();
                phoneController.clear();
              });
            },
            child: Text('add'),
          ),
        ],
      ),
    );
  }
}
