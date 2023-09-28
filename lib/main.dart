import 'package:flutter/material.dart';
import 'package:kycframwork/screens/SignUp.dart';
import 'package:kycframwork/screens/courseMenu.dart';
import 'package:kycframwork/screens/details_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
   
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomeScreen()
      home: SignUp(),
      // home: CourseScreen(),
    );
  }
}
