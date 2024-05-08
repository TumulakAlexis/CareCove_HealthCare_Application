import 'package:care_cove/screens/signinscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfilePage extends StatefulWidget {
  final String? profilePictureUrl;

  const ProfilePage({Key? key, this.profilePictureUrl}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: FutureBuilder<GoogleSignInAccount?>(
          future: _googleSignIn.signInSilently(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 60,
              );
            } else {
              GoogleSignInAccount? user = snapshot.data;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(user?.photoUrl ?? ''),
                  ),
                  SizedBox(height: 20),
                  Text(
                    user?.displayName ?? 'User',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50,),
                  ElevatedButton(
                    onPressed: _signOut,
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
                        "Sign Out",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ]
              );
            }
          },
        ),
      ),
    );
  }

  void _signOut() async {
    await _googleSignIn.signOut();
    Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignIn()));
  }
}
