import 'package:flutter/material.dart';

class PastaWithBasil extends StatefulWidget {
  const PastaWithBasil({Key? key}) : super(key: key);

  @override
  State<PastaWithBasil> createState() => _PastaWithBasilState();
}

class _PastaWithBasilState extends State<PastaWithBasil> {
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
                'assets/images/Au67OO5Oa2AziaT9yHaGOy1OFWzyykfqVAGUzV1J(1).jpeg',
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
                              ' Pasta With basil',
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
                                    '30 min',
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
                                    '4.1/5',
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
                                    '250 Kcal',
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
                              'assets/images/kisspng-spaghetti-with-meatballs-pasta-salad-tomato-sauce-pastas-5ad800aeae4f77.403003771524105390714(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'spaghetti pasta',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            const Text(
                              '1 bag',
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
                              'assets/images/5a1c185cb06da9.5067646015117906847227(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'avocado',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 125,
                            ),
                            const Text(
                              'half a piece',
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
                              width: 140,
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
                              'assets/images/kisspng-basil-herb-medicinal-plants-parsley-basil-herb-5a70ffd1a14e16.1273829915173549616607(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'basil',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 205,
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
                              'assets/images/Engine-Oil-Oil-Motor-Oil-Crude-Oil-Oils-PNGs-Images-2png(4).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Oil',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 225,
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
                              'assets/images/kisspng-garlic-spice-condiment-herb-seasoning-garlic-5a6a9d5df0c1c1.8636951915169365419862(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'garlic',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 180,
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
                              'assets/images/5a38d533ef45b6.6007167515136740359801(1).png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Lemon',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 160,
                            ),
                            const Text(
                              '1 piece',
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
            ),

          ],
        ));
  }
}
