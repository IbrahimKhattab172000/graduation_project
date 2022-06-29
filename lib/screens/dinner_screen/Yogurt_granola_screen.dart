import 'package:flutter/material.dart';

class YogurtGranolaScreen extends StatefulWidget {
  const YogurtGranolaScreen({Key? key}) : super(key: key);

  @override
  State<YogurtGranolaScreen> createState() => _YogurtGranolaScreenState();
}

class _YogurtGranolaScreenState extends State<YogurtGranolaScreen> {
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
                'assets/images/22e247e0a451eb10bf8147617f6a014e_w750_h500(1).jpg',
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
                              'Yogurt Granola',
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
                                    '5 min',
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
                                    '4.8/5',
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
                                    '145 Kcal',
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
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                                'assets/images/kisspng-rolled-oats-cereal-whole-grain-oatmeal-oatmeal-5ac4c9b85d65f4.4886415215228461363826.png'),
                            SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Oats',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
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
                              width: 11,
                            ),
                            Image.asset(
                                'assets/images/kisspng-juice-almond-nut-dried-fruit-almond-5a7a2d5706cc48.8752447915179564390279.png'),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Almonds',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 150,
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
                              'assets/images/kisspng-frosting-icing-powdered-sugar-sucrose-food-sugar-bowl-5aded987e1b3f8.7171621515245541199245(1).png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Suger',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 190,
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
                              'assets/images/kisspng-organic-honey-honey-bee-nectar-mu0101nuka-honey-honey-5aa17ebb0fdeb1.405770571520533179065.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Honey',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 180,
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
                              'assets/images/kisspng-pain-aux-raisins-dried-fruit-nut-muesli-raisins-dried-5a7180e292dd07.1520429315173880026016(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Raisins',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 170,
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
                              'assets/images/kisspng-kefir-frozen-yogurt-goat-milk-yoghurt-yogurt-5abbfac3e2e2f4.1321709015222688679293.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Yogurt',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 180,
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
                              'assets/images/kisspng-pomegranate-juice-sea-breeze-smoothie-cranberry-ju-red-juice-5a9bb8ee9e00d1.6519004615201548626472(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Red berry juice',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 100,
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
                              'assets/images/5a34a46d00a300.2248336515133994050026(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Cranberry',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 150,
                            ),
                            const Text(
                              '400 gr',
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
        ));
  }
}