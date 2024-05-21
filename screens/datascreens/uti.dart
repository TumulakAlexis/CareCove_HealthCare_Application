import 'package:flutter/material.dart';

class Uti extends StatelessWidget {
  const Uti({super.key});

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
              child: const Icon(Icons.arrow_back,)),
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/uti.jpg', // Replace with your image path
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
                    height: 1250,
                    color: const Color.fromARGB(255, 237, 237, 237),
                  ),
                  const Center(
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Positioned(
                        child: Text("UTI",
                        style: TextStyle(fontSize: 50,
                        fontFamily: 'Milky',
                        color: Colors.brown,
                        ),)),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 300,
                          child: Text("A urinary tract infection (UTI) is a common infection that can affect any part of the urinary system, including the kidneys, ureters, bladder, and urethra. Most UTIs involve the lower urinary tract, which includes the bladder and the urethra. UTIs are typically caused by bacteria, with Escherichia coli (E. coli) being the most common culprit. UTIs can occur in people of all ages and genders but are more common in women.",
                          style: TextStyle(color: Colors.brown),
                          textAlign: TextAlign.justify,),
                        ),
                        
                        SizedBox(height: 40,),
                        SizedBox(
                          width: 300,
                          child: Text('SYMPTOMS OF UTI',
                          style: TextStyle(color: Colors.brown,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 300,
                          child: Text('• Pain or burning while urinating',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• Frequent urination',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• Feeling the need to urinate despite having an empty bladder',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),
                        SizedBox(
                          width: 300,
                          child: Text('• Bloody urine',
                          style: TextStyle(color: Colors.brown,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.left,),  
                        ),  
                        SizedBox(
                          width: 300,
                          child: Text('• Pressure or cramping in the groin or lower abdomen',
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
                          child: Text("Home remedies can be helpful in managing the symptoms of a urinary tract infection (UTI) and supporting the body's natural healing processes. Drinking plenty of water is crucial as it helps to flush out bacteria from the urinary tract. Consuming unsweetened cranberry juice or taking cranberry supplements may also help prevent bacteria from adhering to the urinary tract walls, although it's essential to consult a healthcare provider before using cranberry products, especially if you're prone to kidney stones or are taking certain medications. Drinking herbal teas like chamomile or green tea can provide soothing relief and promote hydration. Applying a heating pad to the abdomen can help alleviate discomfort and may provide some relief from pain associated with UTIs. Additionally, practicing good hygiene, such as wiping from front to back after using the bathroom and urinating before and after sexual activity, can help reduce the risk of UTIs. While these home remedies can offer relief, it's crucial to seek medical advice if symptoms persist or worsen, as UTIs may require antibiotic treatment to resolve effectively.",
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