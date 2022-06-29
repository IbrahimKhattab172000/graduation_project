import 'package:flutter/material.dart';

class CornSoupScreen extends StatefulWidget {
  const CornSoupScreen({Key? key}) : super(key: key);

  @override
  State<CornSoupScreen> createState() => _CornSoupScreenState();
}

class _CornSoupScreenState extends State<CornSoupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              child: Image.asset(
                'assets/images/78617139e8402db85f65d16c1e148c4b_w750_h500(1).jpg',
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 3.2 - 16,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40)),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                            child: Text(
                              ' Corn Soup',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 120,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadiusDirectional.circular(30),
                                color: const Color(0XFF1D3446),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                      width: 26,
                                      child: Image.asset(
                                        'assets/images/icons8-alarm-clock-96.png',
                                        fit: BoxFit.cover,
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    '20 min',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 120,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadiusDirectional.circular(30),
                                color: const Color(0XFF1D3446),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                      width: 26,
                                      child: Image.asset(
                                        'assets/images/icons8-star-96.png',
                                        fit: BoxFit.cover,
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    '3.9/5',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 120,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadiusDirectional.circular(30),
                                color: const Color(0XFF1D3446),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  Container(
                                      width: 26,
                                      child: Image.asset(
                                        'assets/images/icons8-calories-64.png',
                                        fit: BoxFit.cover,
                                      )),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    '178 Kcal',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'ingridients',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/kisspng-corn-on-the-cob-popcorn-maize-corn-kernel-sweet-co-a-golden-corn-kernels-5a9c1ad99c6572.8992521715201799296406(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Corn',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 200,
                            ),
                            const Text(
                              '400 gr',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/kisspng-red-onion-food-vegetable-onion-5a7cbbdca87602.29721942151812399669(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Onions',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 170,
                            ),
                            const Text(
                              '1 piece',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/kisspng-prosciutto-ham-acqua-pazza-chicken-soup-vegetable-parsley-5abe06db9de662.6681012915224030356468(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Celery',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 200,
                            ),
                            const Text(
                              '3 gr',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/PNG-images-Salt-19png.png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Salt',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 225,
                            ),
                            const Text(
                              '5 gr',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/images__4_-removebg-preview(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Chicken Broth',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            const Text(
                              '1 piece',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/Engine-Oil-Oil-Motor-Oil-Crude-Oil-Oils-PNGs-Images-2png(4).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Olive Oil',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 170,
                            ),
                            const Text(
                              '10 gr',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/—Pngtree—ingredients black pepper_5650819(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'black pepper',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            const Text(
                              '3 gr',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/images/PNG-images-Butter-5png (1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'butter',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 190,
                            ),
                            const Text(
                              '10 gr',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ///Loooooooooooooooooooooooooooooooooooool
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
            ),
          ],
        ));
  }
}