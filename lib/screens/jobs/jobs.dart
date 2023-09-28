import 'package:flutter/material.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 3, 97),
      appBar: AppBar(
        title: Text(
          "Jobs Oppertunity",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 22, 3, 97),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 20),
        child: Container(
          child: Column(
            children: [
              Container(
                  child: Row(
                children: [
                  Icon(Icons.chair,
                  size: 40,
                  color: Colors.grey,
                  
                  ),
                  SizedBox(
                    width: 10,
                  ),
        
                  // Image.network(
                  //   "https://seeklogo.com/images/S/slack-logo-CC23D823C0-seeklogo.com.png",
                  //   width: 40,
                  // ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        "Job role: - Carpenter",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "UP Allahabad Sanju furniture",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.green,
                      elevation: 10,
                      ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
