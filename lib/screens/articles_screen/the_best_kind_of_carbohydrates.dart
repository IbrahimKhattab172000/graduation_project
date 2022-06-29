import 'package:flutter/material.dart';

class DietFormNursingMothers extends StatefulWidget {
  const DietFormNursingMothers({Key? key}) : super(key: key);


  @override
  State<DietFormNursingMothers> createState() => _DietFormNursingMothersState();
}

class _DietFormNursingMothersState extends State<DietFormNursingMothers> {
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
              expandedHeight: 277,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(40)),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/Fotolia_210412269_S.jpg',
                        fit: BoxFit.cover,
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                child: IconButton(
                                  icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                                backgroundColor: Colors.grey,
                                radius: 19,

                              ),
                              IconButton(
                                icon: const Icon(Icons.favorite, color: Colors.red),
                                onPressed: () {},
                              ),
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
                    child: Text('''The best kind of
carbohydrates ... ''',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start:30,top: 20),
                    child: Text(
                      '''We always hear advice from nutrition
experts that you must convert the
carbohydrates in your eating into complex
carbohydrates, and these are examples of
important complex carbohydrates in the
diet. whole grains such as brown rice,
barley, whole wheat and quinoa; Which is
a very good source of fiber, and potassium,
magnesium, and selenium salts. Fruits rich
in fiber such as apples, strawberries,
blueberries and bananas. Legumes such as
beans, kidney beans, lentils, peas, etc.;
Which is characterized by a high
percentage of fiber and therefore is an
important source of iron, potassium and
folic acid. Vegetables rich in fiber,
especially green leafy vegetables such as
lettuce and watercress, vegetables such as
broccoli, carrots. Simple carbohydrates will
be the easiest option because they are
found everywhere in tempting shapes and
flavors, but before you buy them, know that
they cause a very high insulin level. It
causes the accumulation of fat in the
abdominal area, and insulin resistance, and
all of this makes you vulnerable to heart
disease and type 2 diabetes, and you will
notice that you are constantly hungry and
always looking for an intoxicating need,
other than mood swings and deteriorating
health in general. Choosing healthy
carbohydrates for your consumption
requires research, knowledge and time,
and you will need to read the nutritional
information on any product you buy, with
time and getting used to, you will start
choosing the right choices that benefit
your body and your health and protect you
in the long run. It will help you lose fat,
lower cholesterol levels, and improve your
health in general.

What are complex carbohydrates?

They are carbohydrates that contain a large
amount of nutrients in addition to a large
percentage of fiber such as brown rice,
whole wheat, oats, and types of fruits.

What is the difference between simple
and complex carbohydrates?

Simple and refined carbohydrates are easily
absorbed; Therefore, there are no
significant nutrients and fibers, so they are
considered empty calories in many cases,
such as white sugar, some fruits with a high
sugar content, white flour, pasta.

Why are complex carbohydrates the best?

Digestion and absorption are slower than
simple carbohydrates, and this gives a
feeling of satiety and fullness for long
periods.

The blood sugar suddenly rises to high
levels, and therefore the secretion of
insulin from the pancreas will be gradual
and at a reasonable rate. This is why
complex carbohydrates are ideal for type
2 diabetics.

Stabilization of blood sugar, and therefore
moderation in insulin secretion, leads to a
decrease in the feeling of hunger every bit,
and a constant decrease in desire for sugar

It contains a high amount of fiber, vitamins
and minerals, thus helping to lower
cholesterol.

What would you gain if you changed your
eating regimen to complex carbohydrates?

Safe weight loss Because you will feel full
for a longer period, the feeling of hunger
will decrease throughout the day, and the
insulin responsible for putting the body
into a state of storing fat will decrease.

It helps control blood pressure, especially
for hypertensive patients.

It helps to stabilize the mood and link it to
sugars, and increases focus and ability to
be productive throughout the day.

Examples of important complex
carbohydrates in the diet.

whole grains such as brown rice, barley,
whole wheat and quinoa; Which is a very
good source of fiber, and potassium,
magnesium, and selenium salts.

Fruits rich in fiber such as apples,
strawberries, blueberries and bananas.

Legumes such as beans, kidney beans,
lentils, peas, etc.; Which is characterized
by a high percentage of fiber and therefore
is an important source of iron, potassium
and folic acid.

Fiber-rich vegetables, especially green,
fibrous leaves such as lettuce and
watercress, Vegetables like broccoli, carrots.

Simple carbohydrates will be the easiest
option because they are found everywhere
in tempting shapes and flavors, but before
you buy them, know that they cause a very
high insulin level.

It causes the accumulation of fat in the
abdominal area, and insulin resistance,
and all of this makes you vulnerable to
heart disease and type 2 diabetes, and you
will notice that you are constantly hungry
and always looking for an intoxicating need,
other than mood swings and deteriorating
health in general.

Choosing healthy carbohydrates for
your consumption requires research,
knowledge and time, and you will
need to read the nutritional
information on any product you buy,
with time and getting used to
choosing the right choices that
benefit your body and health and
protect you in the long run ... '''        ,



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