import 'package:flutter/material.dart';
import 'package:kycframwork/common/Comman_textfiel1.dart';
import 'package:kycframwork/common/switchbutton.dart';
import 'package:kycframwork/screens/Userdetail.dart';
import 'package:kycframwork/screens/details_Screen.dart';
// import 'package:casestudy/common/Comman_textfiel1.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 113, 2, 76),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.grey),
                  // color: Color(0XFF000C18),
                  color: Color.fromARGB(255, 60, 5, 52),
                ),
                width: 299,
                height: 494,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign Up",
                    style: TextStyle(
                      // color: Colors.blueAccent,
                      color:Colors.purple,
                      fontSize: 20,
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: CommanTextfiel1(
                        texthint: "Your Namw...",
                        maintext: "Name",
                      ),
                    ),
              
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: CommanTextfiel1(
                        texthint: "Your email...",
                        maintext: "Email",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: CommanTextfiel1(
                        texthint: "Your Password...",
                        maintext: "Password",
                        visiblePassword: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 6),
                      child: Row(
                        children: [
                          SwitchExample(),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: Size(260, 30),
                        primary: Colors.white,
                        backgroundColor: Colors.purple,
                      ),
                      onPressed: () {
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
                      },
                      child: Text(
                        "SIGN IN",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        ),
                       
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
