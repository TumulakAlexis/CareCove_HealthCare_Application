import 'package:care_cove/screens/datascreens/cough.dart';
import 'package:care_cove/screens/datascreens/fever.dart';
import 'package:care_cove/screens/datascreens/flu.dart';
import 'package:care_cove/screens/datascreens/skininfection.dart';
import 'package:care_cove/screens/datascreens/uti.dart';
import 'package:care_cove/screens/homescreen%20screens/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget buildImage(String assetImages, int index) => GestureDetector(
    onTap: () {
      // Handle tap action here, for example, navigate to a new screen
      print('Tapped on image $index');
      switch (index) {
        case 0:
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Cough()));
          break;
        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Fever()));
          break;
        case 2:
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Flu()));
          break;
        case 3:
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SkinInfection()));
          break;
        case 4:
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Uti()));
          break;
      }
    },
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 255, 255, 255),
            blurRadius: 0,
            offset: Offset(1, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          assetImages,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final assetImage = [
    'assets/cough.jpg',
    'assets/fever.jpg',
    'assets/flu.jpg',
    'assets/skin_infection.jpg',
    'assets/uti.jpg'
  ];

  Widget buildImage1(String assetImages, int index) => Container(
    margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
    color: const Color.fromARGB(255, 255, 255, 255),
    child: Image.asset(
      assetImages,
      fit: BoxFit.cover,
    ),
  );

  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 125,
                color: Colors.brown,
              ),
              const Positioned(
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
              const Positioned(
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
                    MaterialPageRoute(builder: (context) => const ProfilePage()));
                  },
                  child: FutureBuilder<GoogleSignInAccount?>(
                    future: _googleSignIn.signInSilently(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return const Icon(
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
          const SizedBox(height: 25),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.brown, width: 2.0),
            ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search your topic',
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Row(
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
          const SizedBox(height: 20),
          CarouselSlider.builder(
            itemCount: assetImage.length,
            itemBuilder: ((context, index, realIndex) {
              final assetImages = assetImage[index];
              return buildImage(assetImages, index);
            }),
            options: CarouselOptions(
              height: 300,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
            ),
          ),
          const SizedBox(height: 30,),
          const Row(
            children: [
              SizedBox(width: 20),
              Text(
                    "Available Doctors",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
            ],
          ),
            const SizedBox(height: 20,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.brown,),
              borderRadius: BorderRadius.circular(15)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.person, size: 35,color: Colors.brown,),
                  SizedBox(width: 30,),
                  Text("Joshua Bayryll, MD",
                  style: TextStyle(color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),)
                ],
              ),
          ),

          const SizedBox(height: 20,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.brown,),
              borderRadius: BorderRadius.circular(15)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.person, size: 35,color: Colors.brown,),
                  SizedBox(width: 30,),
                  Text("Nicole Angela, MD, PhD",
                  style: TextStyle(color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),)
                ],
              ),
          ),

          const SizedBox(height: 20,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.brown,),
              borderRadius: BorderRadius.circular(15)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.person, size: 35,color: Colors.brown,),
                  SizedBox(width: 30,),
                  Text("Angeli Cae, RN, MD",
                  style: TextStyle(color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),)
                ],
              ),
          ),

          const SizedBox(height: 20,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.brown,),
              borderRadius: BorderRadius.circular(15)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.person, size: 35,color: Colors.brown,),
                  SizedBox(width: 30,),
                  Text("Pattie Anderson, MD",
                  style: TextStyle(color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),)
                ],
              ),
          ),

          const SizedBox(height: 20,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.brown,),
              borderRadius: BorderRadius.circular(15)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.person, size: 35,color: Colors.brown,),
                  SizedBox(width: 30,),
                  Text("Cortney Alex, MD",
                  style: TextStyle(color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),)
                ],
              ),
          ),

          const SizedBox(height: 20,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.brown,),
              borderRadius: BorderRadius.circular(15)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.person, size: 35,color: Colors.brown,),
                  SizedBox(width: 30,),
                  Text("Mang Kiko, RN",
                  style: TextStyle(color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),)
                ],
              ),
          ),

          const SizedBox(height: 60,)
          
          
        ],
      ),
    ),
  );
}

}
