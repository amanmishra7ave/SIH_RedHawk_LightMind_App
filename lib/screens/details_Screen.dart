import 'package:flutter/material.dart';
import 'package:kycframwork/navigation/navigator.dart';
import 'package:kycframwork/screens/Userdetail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            VerticalNavigation(),
            UserDetailsScreen(),

          ],
        ),
      ),
    );
  }
}

