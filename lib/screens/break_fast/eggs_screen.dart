// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EggsScreen extends StatefulWidget {
  const EggsScreen({Key? key}) : super(key: key);

  @override
  State<EggsScreen> createState() => _EggsScreenState();
}

class _EggsScreenState extends State<EggsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const SizedBox(height: 25,),


            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              child: Image.asset(
                'assets/images/افطار ٢(1).jpeg',
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
                              ' Eggs',
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
                                    '8 min',
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
                                    '4.5/5',
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
                                    '120 Kcal',
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
                              'assets/images/kisspng-fried-egg-egg-white-white-eggs-5a833b0e90f604.7536668915185497745938(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Eggs',
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