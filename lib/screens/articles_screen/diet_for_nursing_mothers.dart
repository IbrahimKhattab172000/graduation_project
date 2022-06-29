// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DietForNursingMothers extends StatefulWidget {
  const DietForNursingMothers({Key? key}) : super(key: key);


  @override
  State<DietForNursingMothers> createState() => _DietForNursingMothersState();
}

class _DietForNursingMothersState extends State<DietForNursingMothers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(

              snap: true,
              floating: true,

              backgroundColor:const Color(0xFFE9E9E9) ,
              expandedHeight: 240,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(40)),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/breastfeeding-diet-plan.jpg',
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
                    child: Text('Diet for nursing mothers ...',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start:30,top: 20),
                    child: Text(
                      ''' As mothers, we always worry about our
children, especially if they are still in the
infancy stage. We worry more about our
eating because it causes them stomach
problems or allergies, or we worry about
the amount of food being small, and we
can't breastfeed them enough.

But we would like to reassure you and tell
you that whatever you eat will not affect
your child, because your body will know
exactly what your child needs at every
stage of his development. In this article,
we will tell you tips to help you with your
diet.

What to eat during breastfeeding:

• Your feeding time is very important to
you and your baby. That's why:

Include protein in your food, and it is
preferable that you eat meals containing
protein from 2 to 3 times every day. Like
meat, chicken, fish, eggs, dairy products,
beans and nuts.

But if you follow a vegetarian diet and
avoid protein, you must replace your body
with elements such as iron, zinc, and
countries that you can find in beans, dried
fruits and nuts. And you will need a B12
supplement, so that your child will not be
deficient in this vitamin.

You will need 3 servings of vegetables
every day, whether green like lettuce,
molokhia and zucchini or yellow like corn
and yellow pepper. As for fruits, you will
need two servings of them every day

Whole grains are important to you, make 
them a part of your meals such as oats, 
pasta, whole wheat loaf.

When breastfeeding, we get more thirsty,
but try to drink water all the time, not just
during breastfeeding.

• What is the quantity you are supposed
to eat while you are breastfeeding?

Your body needs more calories to make
milk for your baby, but your body loses
a large number of minerals and nutrients,
and therefore you need to compensate for
what your body is losing.

And before you add calories to your body,
you must know that if you are overweight
since pregnancy, you will not need to add
calories, because your body will
automatically use these calories and
produce milk, but if you lose this weight,
you will need 500 to 600 calories each 
day. As soon as your child is 6 months old,
you will start eating while breastfeeding,
and therefore your milk production will
decrease, and you will be able to reduce
your calories.

• Share milk with your child:

Your child, because his brain is
developing normally, needs
doca-hexaenoic acid (DHA), which is an
omega-3 fatty acid. It is preferable that
you do not eat catfish, mackerel, or
swordfish because they contain high
levels of mercury.

Also try to reduce the food that contains
a lot of spices, and if you find your child
suffering from colic, gas or diarrhea after
eating a certain thing, avoid this food for
a while, until the symptoms disappear.
And if this food was the reason, it would
not be useful to eat it while you are
breastfeeding.

These were the most important tips
that will help you during the
breastfeeding period ... '''        ,



                      style: TextStyle(
                        fontSize: 15,
                      ),),
                  ),





                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}