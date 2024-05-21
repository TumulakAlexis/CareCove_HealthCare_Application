  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';

  class Cough extends StatelessWidget {
    const Cough({Key? key});

    @override
    Widget build(BuildContext context) {

      String description1 = 'A cough that persists for several weeks or one that brings up discolored or bloody mucus may indicate a condition that needs medical attention. At times, coughing can be very forceful. Prolonged, vigorous coughing can irritate the lungs and cause even more coughing. It is also exhausting and can cause sleeplessness, dizziness or fainting, headaches, urinary incontinence, vomiting, and even broken ribs.';

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
                  'assets/cough.jpg', // Replace with your image path
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
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 30,),
                          const Positioned(
                          child: Text("COUGH",
                          style: TextStyle(fontSize: 50,
                          fontFamily: 'Milky',
                          color: Colors.brown,
                          ),)),
                          const SizedBox(height: 20,),
                          Container(
                            width: 300,
                            child: const Text("A cough is your body's way of responding when something irritates your throat or airways. An irritant stimulates nerves that send a message to your brain. The brain then tells muscles in your chest and abdomen to push air out of your lungs to force out the irritant. An occasional cough is normal and healthy.",
                            style: TextStyle(color: Colors.brown),
                            textAlign: TextAlign.justify,),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            width: 300,
                            child: Text(description1,
                            style: const TextStyle(color: Colors.brown),
                            textAlign: TextAlign.justify,),
                          ),
                          const SizedBox(height: 40,),
                          Container(
                            width: 300,
                            child: const Text('CAUSES OF COUGH',
                            style: TextStyle(color: Colors.brown,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),  
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            width: 300,
                            child: const Text('• Common Cold',
                            style: TextStyle(color: Colors.brown,
                            fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.left,),  
                          ),
                          Container(
                            width: 300,
                            child: const Text('• Influenza (Flu)',
                            style: TextStyle(color: Colors.brown,
                            fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.left,),  
                          ),
                          Container(
                            width: 300,
                            child: const Text('• Inhaling an irritant (such as smoke, dust, chemicals or a foreign body)',
                            style: TextStyle(color: Colors.brown,
                            fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.left,),  
                          ),
                          Container(
                            width: 300,
                            child: const Text('• Pneumonia',
                            style: TextStyle(color: Colors.brown,
                            fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.left,),  
                          ),  
                          Container(
                            width: 300,
                            child: const Text('• Whooping Cough',
                            style: TextStyle(color: Colors.brown,
                            fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.left,),  
                          ),
                          const SizedBox(height: 40,),
                          Container(
                            width: 300,
                            child: const Text('HOME REMEDIES',
                            style: TextStyle(color: Colors.brown,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),  
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            width: 300,
                            child: const Text("Home remedies for cough include soothing options like honey and lemon, which can be mixed in warm water to create a soothing drink. Ginger tea, made by boiling ginger slices in water, can also help alleviate cough symptoms. Steam inhalation, often with added essential oils like eucalyptus or peppermint, can loosen mucus and ease coughing. Gargling with warm salt water is another effective remedy for throat irritation. Turmeric milk, consumed before bedtime, may relieve cough and aid in better sleep. Herbal teas, such as thyme tea, are also known to provide relief from coughing. It's important to stay hydrated by drinking plenty of fluids like water, herbal teas, and clear broths to keep the throat moist and ease discomfort.",
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
