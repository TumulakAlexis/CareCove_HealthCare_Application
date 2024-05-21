import 'package:flutter/material.dart';

class SkinInfection extends StatelessWidget {
  const SkinInfection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: GestureDetector(
              onTap:(){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/skin_infection.jpg', // Replace with your image path
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Stack(
                  children: [ Container(
                    width: 400,
                    height: 1550,
                    color: const Color.fromARGB(255, 237, 237, 237),
                  ),
                  const Center(
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Positioned(
                        child: Text("SKIN INFECTION",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 50,
                        fontFamily: 'Milky',
                        color: Colors.brown,
                        ),)),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 300,
                          child: Text("A skin infection is a condition caused by bacteria, viruses, fungi, or parasites that invade the skin and lead to inflammation, irritation, and other symptoms. Common types of skin infections include bacterial infections like cellulitis, impetigo, and folliculitis, viral infections such as herpes simplex and shingles, fungal infections like athlete's foot and ringworm, and parasitic infections like scabies and lice. Symptoms can vary depending on the type of infection but may include redness, swelling, pain, itching, and the presence of pus or blisters. Treatment typically involves medication such as antibiotics, antifungals, or antivirals, along with proper hygiene practices and sometimes topical creams or ointments. In severe cases or when left untreated, skin infections can lead to complications and spread to other parts of the body, so it's essential to seek medical attention if you suspect you have a skin infection.",
                          style: TextStyle(color: Colors.brown),
                          textAlign: TextAlign.justify,),
                        ),
                        
                        SizedBox(height: 40,),
                        SizedBox(
                          width: 300,
                          child: Text('SYMPTOMS OF SKIN INFECTION',
                          style: TextStyle(color: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 300,
                          child: Text('• redness on pales skin, or purple or darker areas of skin if you have a darker skin tone',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• lesions that may be flat or raised, bumpy, wart-like, and so on',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• itching',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• Pneumonia',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),  
                        SizedBox(
                          width: 300,
                          child: Text('• pain and tenderness',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(height: 40,),
                        SizedBox(
                          width: 300,
                          child: Text('HOME REMEDIES',
                          style: TextStyle(color: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 300,
                          child: Text("When dealing with a skin infection at home, several remedies may help alleviate symptoms and promote healing. One effective approach is to clean the affected area thoroughly with mild soap and warm water to remove any debris and bacteria. Applying a warm compress or soaking the area in warm water can help reduce inflammation and discomfort. Natural remedies such as tea tree oil, honey, and aloe vera gel possess antimicrobial properties and can be applied topically to the infected area to help fight off infection and soothe the skin. Additionally, maintaining good hygiene practices, such as keeping the affected area clean and dry, can prevent the infection from worsening. While these home remedies can provide relief for mild skin infections, it's important to consult a healthcare professional if the infection persists or worsens, as some cases may require medical treatment with antibiotics or antifungal medications.",
                          style: TextStyle(color: Colors.brown),
                          textAlign: TextAlign.justify,),
                        ),

                        


                        

                      ],
                    ),
                  )
                  ]
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}