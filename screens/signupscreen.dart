
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();

}

class _SignUpScreenState extends State<SignUpScreen> {



  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 230,
                  height: 230,
                  child: Lottie.asset(
                    'assets/carecove.json',
                  ),
                ),
                const Text(
                  " CareCove",
                  style: TextStyle(
                      fontFamily: 'Fresh', fontSize: 40, color: Colors.brown),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.brown),
                    ),
                    SizedBox(
                      width: 250,
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ))),
                const SizedBox(
                  height: 25,
                ),
                const Row(
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
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      obscureText: true,
                    )),
                    const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.brown),
                    ),
                    SizedBox(
                      width: 173,
                    ),
                  ],
                ),
                Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.brown, width: 2.0)),
                    child: TextField(
                      controller: _confirmpasswordController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      obscureText: true,
                    )),
        
                  const SizedBox(height: 25,),
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 180,),
                      ElevatedButton(
                      onPressed: _signUp,
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
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _signUp() async {
  String email = _emailController.text.trim();
  String password = _passwordController.text.trim();
  String confirmPassword = _confirmpasswordController.text.trim(); // Assuming _confirmPasswordController is the TextEditingController for the confirm password field
  try {
    if (password != confirmPassword) {
      // Show snackbar for password mismatch
      showSnackbar("Passwords do not match.", false);
      return; // Exit the function if passwords don't match
    }
    
    FirebaseAuth _auth = FirebaseAuth.instance;
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (userCredential.user != null) {
      // Show snackbar for successful sign-up
      showSnackbar("Sign up successful.", true);
      Navigator.pop(context);
    } else {
      // Show snackbar for null user after sign-up
      showSnackbar("Error: User is null after sign up.", false);
    }
  } on FirebaseAuthException catch (e) {
    // Handle FirebaseAuthException here
    // Display appropriate error message to the user
    if (e.code == 'weak-password') {
      // Show snackbar for weak password
      showSnackbar('The password provided is too weak.', false);
    } else if (e.code == 'email-already-in-use') {
      // Show snackbar for email already in use
      showSnackbar('The account already exists for that email.', false);
    } else {
      // Show snackbar for other FirebaseAuthException errors
      showSnackbar('Error code: ${e.code}', false);
    }
  } catch (e) {
    // Handle other exceptions here
    // Show snackbar for other exceptions
    showSnackbar("Error: $e", false);
  }
}


  void showSnackbar(String message, bool isSuccess) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: isSuccess ? Colors.green : Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
