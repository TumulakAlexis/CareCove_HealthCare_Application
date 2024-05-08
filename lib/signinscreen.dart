import 'dart:async';

import 'package:care_cove/screens/homescreen.dart';
import 'package:care_cove/screens/signupscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;
      
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      
      final UserCredential userCredential = await _auth.signInWithCredential(credential);
      final User? user = userCredential.user;
      
      // Navigate to the next screen after successful sign-in
      if (user != null) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    } catch (error) {
      print(error);
    }
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> _signIn() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // If sign in succeeds, navigate to the next screen or perform any other action.
      // For example:
      print("Sign up successful.");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign In Successfull"), backgroundColor: Colors.green,));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } on FirebaseAuthException catch (e) {
      print("Firebase Auth Error: ${e.message}");
      // Display error message to the user if needed
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Sign-in failed: ${e.message}"), backgroundColor: Colors.red,
      ));
    } catch (e) {
      print("Error: $e");
      // Display generic error message to the user if needed
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("An error occurred. Please try again later."),
        backgroundColor: Colors.red,
      ));
      
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 220,
                height: 220,
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
                height: 10,
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
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: _signIn,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.brown), // Background color
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: Container(
                      width: 100,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
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
              ),
              SizedBox(height: 20,),
              Text("Sign in using"),
              MaterialButton(
                onPressed: _signInWithGoogle,
                child: Container(width: 50,
                height: 50,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png'))),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
