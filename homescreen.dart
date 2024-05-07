import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
                  top: 40,
                  left: 30,
                child: Text("Hello!",
                style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20),)),
                 Positioned(
                  top: 65,
                  left: 30,
                child: Text("How can we help you?",
                style: TextStyle(
                color: Colors.white,
                fontSize: 15),)),
                Positioned(
                  top: 20,
                  left: 420,
                  child: IconButton(onPressed: (){}, icon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 70,)))
              ],
            ),
            SizedBox(height: 50,),
            Container(
                  width: 350,
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
              SizedBox(height: 50,),
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