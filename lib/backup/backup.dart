import 'package:care_cove/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              SizedBox(
                width: 300,
                height: 300,
                child: Lottie.asset(
                  'assets/carecove.json',
                ),
              ),
              Text(
                " CareCove",
                style: TextStyle(
                    fontFamily: 'Fresh', fontSize: 40, color: Colors.brown),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.brown),
                  ),
                  SizedBox(
                    width: 225,
                  ),
                ],
              ),
              Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 2.0),
                  ),
                  child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ))),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.brown),
                  ),
                  SizedBox(
                    width: 225,
                  ),
                ],
              ),
              Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2.0)),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    obscureText: true,
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have an Account?"),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                       Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
