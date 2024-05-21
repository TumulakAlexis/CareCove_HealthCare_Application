import 'package:flutter/material.dart';

class Fever extends StatelessWidget {
  const Fever({super.key});

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
                'assets/fever.jpg', // Replace with your image path
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
                    height: 1200,
                    color: const Color.fromARGB(255, 237, 237, 237),
                  ),
                  const Center(
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Positioned(
                        child: Text("FEVER",
                        style: TextStyle(fontSize: 50,
                        fontFamily: 'Milky',
                        color: Colors.brown,
                        ),)),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 300,
                          child: Text("A fever is when your body temperature rises higher than normal. A fever itself isn’t an illness. Rather, it’s a symptom of a wide range of health conditions. When your body temperature rises a few degrees above normal, it can be a sign that your immune system has been activated, often to fight an infection. It can also be a side effect of some medications and vaccinations.",
                          style: TextStyle(color: Colors.brown),
                          textAlign: TextAlign.justify,),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 300,
                          child: Text('Common knowledge states that a “normal” body temperature is 98.6 degrees Fahrenheit (37 degrees Celsius). But your baseline body temperature may vary by a degree or more. It also fluctuates. It’s typically lower in the morning and higher in the evening. It’s higher during certain points of your menstrual cycle and when you’re exercising.',
                          style: TextStyle(color: Colors.brown),
                          textAlign: TextAlign.justify,),
                        ),
                        SizedBox(height: 40,),
                        SizedBox(
                          width: 300,
                          child: Text('FEVER SYMPTOMS',
                          style: TextStyle(color: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 300,
                          child: Text('• Chills, feeling cold, shivering and shaking',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• Body aches and headaches.',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• Fatigue (tiredness).)',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• On and off or constant sweating.',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),  
                        SizedBox(
                          width: 300,
                          child: Text('• Flushed complexion or hot skin.',
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
                          child: Text("If your fever is mild — less than 101 degrees F (38.3 degrees C) — you usually don’t need treatment with medication. Make sure you drink plenty of fluids and get plenty of rest. Taking a lukewarm bath — about 98 degrees F (36.7 degrees C) — may also help bring your body’s temperature down. Keep an eye on signs of dehydration and other worsening symptoms.",
                          style: TextStyle(color: Colors.brown),
                          textAlign: TextAlign.justify,),
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 300,
                          child: Text("If you’re feeling uncomfortable and your temperature is higher than 101 degrees F (38.3 degrees C), you can try to break the fever. The most common way to get rid of a fever is to use over-the-counter (OTC) medications such as acetaminophen and nonsteroidal anti-inflammatory drugs (NSAIDs), including ibuprofen, naproxen and aspirin.",
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