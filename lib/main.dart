import 'package:flutter/material.dart';
import 'package:student_database_using_provider/presentation/mian_page/main_page.dart';
import 'package:student_database_using_provider/presentation/student_details/student_details.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Students',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const StudentDetailsScreen() ,
    );
  }
}
