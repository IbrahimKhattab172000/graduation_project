import 'package:flutter/material.dart';

import 'diet_for_nursing_mothers.dart';
import 'protein_screen.dart';
import 'the_best_kind_of_carbohydrates.dart';

class ArticlesScreen extends StatelessWidget {

  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

      body:SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsetsDirectional.only(
          start:9 ,
          end: 9,
        ),
        child: Column(
          children:  [
            const SizedBox(height: 40,),
            Row(
              children: [
                const SizedBox(width: 10,),
                CircleAvatar(
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  backgroundColor: Colors.grey,
                  radius: 19,
                ),
                const SizedBox(width: 105,),
                const Text('Articles',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black),),
              ],
            ),
            const SizedBox(height: 40,),
            Container(
              width: 400,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0XFFD4eDFF)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return ProteinScreen();
                  }),);
                },
                child: Row(
                  children: [
                    Container
                      ( clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(25),

                        ),

                        child: Image.asset('assets/images/Fotolia_210412269_S.jpg',fit: BoxFit.cover,width: 180,)
                    ),
                    const SizedBox(width: 10,),
                    const Text('Protein is indispensable',style: TextStyle(fontSize: 12,),),
                    const SizedBox(width: 20,),
                    CircleAvatar(
                      child: IconButton(
                        icon: const Icon(Icons.favorite,color: Colors.white,),
                        onPressed: (){},
                      ),
                      backgroundColor: Color(0XFF263E50),
                      radius: 19,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              width: 400,
              height: 112,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0XFFD4eDFF)
              ),
              child: Row(
                children: [
                  Container
                    ( clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(25),

                      ),

                      child: Image.asset('assets/images/breastfeeding-diet-plan.jpg',fit: BoxFit.cover,width: 190,)
                  ),
                  const SizedBox(width: 10,),
                  const Text('Nutrition in pregnancy',style: TextStyle(fontSize: 12,),),
                  const SizedBox(width: 20,),
                  CircleAvatar(
                    child: IconButton(
                      icon: const Icon(Icons.favorite_outline,color: Colors.white,),
                      onPressed: (){},
                    ),
                    backgroundColor: Color(0XFF263E50),
                    radius: 19,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              width: 400,
              height: 105,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0XFFD4eDFF)
              ),
              child: Row(
                children: [
                  Container
                    ( clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(25),

                      ),

                      child: Image.asset('assets/images/Untitled-design-40.png',fit: BoxFit.cover,width: 185,)
                  ),
                  const SizedBox(width: 10,),
                  const Text('Heart disease nutrition',style: TextStyle(fontSize: 12,),),
                  const SizedBox(width: 19,),
                  CircleAvatar(
                    child: IconButton(
                      icon: const Icon(Icons.favorite_outline,color: Colors.white,),
                      onPressed: (){},
                    ),
                    backgroundColor: Color(0XFF263E50),
                    radius: 19,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              width: 400,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0XFFD4eDFF)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return DietForNursingMothers();
                  }),);
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return DietFormNursingMothers();
                    }),);
                  },
                  child: Row(
                    children: [
                      Container
                        ( clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(25),

                          ),

                          child: Image.asset('assets/images/Calories.png',fit: BoxFit.cover,)
                      ),
                      const SizedBox(width: 10,),
                      const Text('Diet for nursing mothers',style: TextStyle(fontSize: 12,),),
                      const SizedBox(width: 18,),
                      CircleAvatar(
                        child: IconButton(
                          icon: const Icon(Icons.favorite_outline,color: Colors.white,),
                          onPressed: (){},
                        ),
                        backgroundColor: Color(0XFF263E50),
                        radius: 19,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              width: 400,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0XFFD4eDFF)
              ),
              child: Row(
                children: [
                  Container
                    ( clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(25),

                      ),

                      child: Image.asset('assets/images/oatmeal-537316530-780x520.jpg',fit: BoxFit.cover,)
                  ),
                  const SizedBox(width: 10,),
                  const Text('''The effect of stress
            on the body'''
                    ,style: TextStyle(fontSize: 12,),),
                  const SizedBox(width: 40,),
                  CircleAvatar(
                    child: IconButton(
                      icon: const Icon(Icons.favorite_outline,color: Colors.white,),
                      onPressed: (){},
                    ),
                    backgroundColor: Color(0XFF263E50),
                    radius: 19,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              width: 400,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0XFFD4eDFF)
              ),
              child: Row(
                children: [
                  Container
                    ( clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(25),

                      ),

                      child: Image.asset('assets/images/1-Carbohydrates-big.png',fit: BoxFit.cover,width: 180,)
                  ),
                  const SizedBox(width: 19,),
                  const Text('''The best kind of
      carbohydrates'''
                    ,style: TextStyle(fontSize: 12,),),
                  const SizedBox(width: 40,),
                  CircleAvatar(
                    child: IconButton(
                      icon: const Icon(Icons.favorite,color: Colors.white,),
                      onPressed: (){},
                    ),
                    backgroundColor: Color(0XFF263E50),
                    radius: 19,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ) ,
    );
  }
}