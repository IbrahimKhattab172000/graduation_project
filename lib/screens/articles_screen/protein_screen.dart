import 'package:flutter/material.dart';

class ProteinScreen extends StatefulWidget {
  const ProteinScreen({Key? key}) : super(key: key);


  @override
  State<ProteinScreen> createState() => _ProteinScreenState();
}

class _ProteinScreenState extends State<ProteinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(

            snap: true,
            floating: true,
            backgroundColor:const Color(0xFFE9E9E9) ,
            expandedHeight: 254,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(40)),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Calories.png',
                      fit: BoxFit.cover,
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              // child: IconButton(
                              //   icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
                              //   onPressed: () => Navigator.of(context).pop(),
                              // ),
                              backgroundColor: Colors.grey,
                              radius: 19,

                            ),
                            // IconButton(
                            //   icon: const Icon(Icons.favorite, color: Colors.red),
                            //   onPressed: () {},
                            // ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsetsDirectional.only(start:30,),
                  child: Text('Protein is indispensable ...',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.only(start:30,top: 20),
                  child: Text(
                    ''' You usually read from weak sources!!
I tried before you start a diet on your own!!
Anything you want !!
Let's see other scenarios.

I woke up late for work, made a sandwich and
coffee and went down .

There is no time for lunch.. I bought a bag of
instant noodles, thank you..

It's dinner time for a sandwich like in the
morning.

Will you tell me what is wrong here?!

I will tell you where the protein is here..

Every meal must contain protein, whether
vegetarian, such as legumes such as beans,
beans, etc., or animals, such as eggs, birds,
fish, animals, dairy, or cheese.

Avatar for the face of one day.

Your body as a whole needs 0.5 - 0.8 grams
of protein per kilo.. It varies according to
physical activity from one individual to another

A maximum of 35% of your daily calories

Why does your body need protein?


1. Protein is needed to maintain muscle mass
and build muscle..

2. A meal rich in protein after exercise helps
muscles recover faster.

3. Skin, hair, nails, digestive enzymes,
hormones, genes, everything in the body
needs protein in order to regenerate, adopt,
and perform its function..


4. Protein is the hero that will help you in your
weight loss journey..

5. Increases the burning rate by 15%.

• protein keeps you satiated for longer periods

• Protein is digested slower than
carbohydrates ,so it is preferred in the stomach
for a longer period of time, as it makes you feel
full and satiety for a longer period

• The glycemic factor of most types of protein
is not as high as most carbohydrates, as it does
not raise insulin in the same proportion..

• The process of converting protein into fat
and storing it is difficult and complicated. If
you eat a lot of protein, it is difficult to gain
weight..

• After a meal and throughout the day your
body prefers to use this protein..

• Absorption of protein throughout the day
will be within 3 grams per hour, if you take it
from a source like eggs, for example..


That's why I take care of protein in
every meal every day ... '''        ,



                    style: TextStyle(
                      fontSize: 15,
                    ),),
                ),





              ],
            ),
          ),
        ],
      ),
    );
  }
}