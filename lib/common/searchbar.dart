import 'package:flutter/material.dart';

class SearchBarhere extends StatelessWidget {
  const SearchBarhere({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 294,
      height: 35,
      child: TextField(
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
        textAlignVertical:TextAlignVertical.bottom,
        // textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 2, color: Colors.grey)),
            filled: true,
            fillColor: Color.fromARGB(255, 20, 21, 31),
            
            hintText: "Type here...",
            hintStyle: TextStyle(
              // wordSpacing: 10,
              fontSize: 15,
              color: Colors.grey,
            )
            // border: MaterialStateOutlineInputBorder.resolveWith((states) => null)
            ),
      ),
    );
  }
}
