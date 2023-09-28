import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class CommanTextfiel1 extends StatelessWidget {
  const CommanTextfiel1(
      {this.texthint,
      this.maintext,
      this.visiblePassword,
      this.emailValidator});

  final String? texthint;
  final String? maintext;
  final bool? visiblePassword;
  final bool? emailValidator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 5),
            child: Text(
              maintext!,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 260,
            height:40,
            child: TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              obscureText: visiblePassword ?? false,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: texthint,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 54, 54, 54),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
