import 'package:care_cove/screens/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

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
        child: Image.asset(
          assetImages,
          fit: BoxFit.cover,
        ),
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
                  top: 55,
                  left: 30,
                  child: Text(
                    "Hello!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  top: 73,
                  left: 30,
                  child: Text(
                    "How can we help you?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                Positioned(
                  top: 45,
                  left: 290,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
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
                          return CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(user?.photoUrl ?? ''),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
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
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "Explore Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CarouselSlider.builder(
              itemCount: assetImage.length,
              itemBuilder: ((context, index, realIndex) {
                final assetImages = assetImage[index];
                return buildImage(assetImages, index);
              }),
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

