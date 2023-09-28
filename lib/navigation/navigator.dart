import 'package:flutter/material.dart';
import 'package:kycframwork/screens/SignUp.dart';
import 'package:kycframwork/screens/upload_documents.dart';

class VerticalNavigation extends StatefulWidget {
  const VerticalNavigation({super.key});

  @override
  State<VerticalNavigation> createState() => _VerticalNavigationState();
}

class _VerticalNavigationState extends State<VerticalNavigation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: 100,
        child: Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Light\nMind",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.format_align_left,
                      color: Colors.purple,
                      size: 25,
                    ),
                    label: Text(""),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>DocumentHomeScreen())
                       );
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.purple,
                      size: 25,
                    ),
                    label: Text(""),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.credit_card,
                      color: Colors.purple,
                      size: 25,
                    ),
                    label: Text(""),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.purple,
                      size: 25,
                    ),
                    label: Text(""),
                  ),
                ),
                SizedBox(
                  height: 290,
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                    icon: Icon(
                      Icons.logout,
                      color: Colors.purple,
                      size: 25,
                    ),
                    label: Text(""),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


