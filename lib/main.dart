import 'package:flutter/material.dart';
import 'package:classproject/pages/schedule.dart';
import 'package:classproject/pages/grad.dart';
import 'package:classproject/pages/login.dart';
import 'package:classproject/pages/home.dart';

void main() {
  runApp(StudentManagementApp());
}

class StudentManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '虛擬班導',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}


