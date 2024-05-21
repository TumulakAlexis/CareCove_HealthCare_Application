import 'package:flutter/material.dart';

class Flu extends StatelessWidget {
  const Flu({super.key});

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
                'assets/flu.jpg', // Replace with your image path
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
                    height: 1340,
                    color: const Color.fromARGB(255, 237, 237, 237),
                  ),
                  const Center(
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Positioned(
                        child: Text("FLU",
                        style: TextStyle(fontSize: 50,
                        fontFamily: 'Milky',
                        color: Colors.brown,
                        ),)),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 300,
                          child: Text("Influenza (flu) is a highly contagious viral infection of the respiratory tract that can cause severe illness and life-threatening complications (including pneumonia). It affects people of all ages. The flu is usually spread by breathing in droplets from coughs and sneezes that contain the virus.",
                          style: TextStyle(color: Colors.brown),
                          textAlign: TextAlign.justify,),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 300,
                          child: Text('The flu is a seasonal infection that usually occurs from April to September. Flu seasons vary in severity and duration from year to year. On average each year in Australia, influenza causes approximately 100 deaths and 5100 hospitalisations. These numbers are widely believed to under-represent the true burden of influenza disease in Australia.',
                          style: TextStyle(color: Colors.brown),
                          textAlign: TextAlign.justify,),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 300,
                          child: Text('Even healthy people can sometimes die from the flu. Some Victorians are at increased risk of serious disease and complications of flu, like young children, the elderly, pregnant women, Aboriginal and Torres Strait Islander people and people with a weakened immune system or a chronic medical condition.',
                          style: TextStyle(color: Colors.brown),
                          textAlign: TextAlign.justify,),
                        ),
                        SizedBox(height: 40,),
                        SizedBox(
                          width: 300,
                          child: Text('SYMPTOMS OF FLU',
                          style: TextStyle(color: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 300,
                          child: Text('• Sudden appearance of a high fever (38°C or more)',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• a dry cough',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• body aches (especially in the head, lower back and legs)',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• feeling extremely weak and tired (and not wanting to get out of bed).',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),  
                        SizedBox(
                          width: 300,
                          child: Text('• chills',
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
                          child: Text("When combating the flu at home, prioritize hydration by consuming ample fluids like water, herbal teas, and clear broths to keep your body hydrated and help loosen congestion. Additionally, ensure you get plenty of rest to support your immune system's fight against the virus. Steam inhalation is beneficial for relieving congestion and facilitating easier breathing; you can achieve this by taking a hot shower or inhaling steam from a bowl of hot water with a towel draped over your head. Gargling with salt water can also provide relief by soothing a sore throat and reducing inflammation. These simple yet effective home remedies can complement medical treatment and help you recover more quickly from the flu.",
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