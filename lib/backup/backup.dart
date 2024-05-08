import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Function to fetch the user's profile picture
  Future<String?> fetchProfilePicture() async {
    try {
      // Get the currently signed-in user
      GoogleSignInAccount? user = _googleSignIn.currentUser;

      // Check if the user is signed in
      if (user != null) {
        // Retrieve the user's profile picture URL
        String? profilePictureUrl = user.photoUrl;
        return profilePictureUrl;
      } else {
        // User is not signed in
        return null;
      }
    } catch (error) {
      print('Error fetching profile picture: $error');
      return null;
    }
  }

  Widget _buildProfilePicture() {
    return FutureBuilder<String?>(
      future: fetchProfilePicture(),
      builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting for the profile picture to load
          return CircularProgressIndicator(); // Or any other loading indicator
        } else if (snapshot.hasError) {
          // If an error occurred while fetching the profile picture
          return Text('Error fetching profile picture');
        } else if (snapshot.hasData) {
          // If the profile picture URL is available
          String? profilePictureUrl = snapshot.data;
          return Image.network(profilePictureUrl ?? ''); // Display the profile picture
        } else {
          // No profile picture available (user not signed in)
          return Text('User not signed in');
        }
      },
    );
  }


  final assetImage = [
    'assets/cough.jpg',
    'assets/fever.jpg',
    'assets/flu.jpg',
    'assets/skin_infection.jpg',
    'assets/uti.jpg'
  ];

   Widget buildImage(String assetImages, int index) => Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 5),
      color: Colors.grey,
      child: Image.asset(assetImages,
      fit: BoxFit.cover,),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 125,
                  color: Colors.brown,
                ),
                Positioned(
                  top: 60,
                  left: 30,
                child: Text("Hello!",
                style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18),)),
                 Positioned(
                  top: 79,
                  left: 30,
                child: Text("How can we help you?",
                style: TextStyle(
                color: Colors.white,
                fontSize: 13),)),
                Positioned(
                  top: 40,
                  left: 290,
                  child: _buildProfilePicture(),
              ),
              ],
            ),
            SizedBox(height: 25,),
            Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 2.0),
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search your topic',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ))),
              SizedBox(height: 25,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Explore Categories", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown, fontSize: 20),),
              ],
            ),
            SizedBox(height: 20,),
           CarouselSlider.builder(itemCount: assetImage.length, 
           itemBuilder: ((context, index, realIndex) {
             final assetImages = assetImage[index];

             return buildImage(assetImages, index);
           }), 
           options: CarouselOptions(height: 300,
           autoPlay: true,
           autoPlayInterval: Duration(seconds: 4),

           ) ),
          ],
        ),
      )
    );

  }
}