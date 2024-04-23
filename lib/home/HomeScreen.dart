import 'package:e_commers_ui/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/imglist.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => homeScreenState();
}

class homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 32, 0, 0),
                      child: const Icon(
                        color: Colors.black87,
                        Icons.sports_esports,
                        size: 27,
                      ),
                    ),
                     Container(
                       margin: const EdgeInsets.fromLTRB(5, 32, 0, 0),
                         child: const Text('G-Store',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),),
                    SizedBox(width: 117,),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 32, 15, 0),
                      child: const Icon(
                        color: Colors.black87,
                        Icons.notifications_none,
                        size: 27,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 32, 15, 0),
                      child: const Icon(
                        color: Colors.black87,
                        Icons.favorite_border,
                        size: 27,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 32, 15, 0),
                      child: const Icon(
                        color: Colors.black87,
                        Icons.shopping_cart_outlined,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19, left: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 333,
                    decoration: BoxDecoration(
                      color: const Color(0xFFf1f2f2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 26,
                                color: Color(0xFFababab),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 1),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Search for products',
                                          style: TextStyle(
                                            color: Color(0xFFababab),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 125),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Icon(
                                                    Icons.menu,
                                                    size: 24,
                                                    color: Colors.black87,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 19, left: 12),
                      child: Container(
                        height: 142,
                        width: 333,
                        decoration: BoxDecoration(
                          color: const Color(0xfff1f2f4),
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/background.jpg'),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Sale Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 3),
                                child: Text('To 30% off',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 101,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(8)),
                                      child: const Center(
                                        child: Text(
                                          'Shop Now',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 5,
                        width: 38,
                        decoration: BoxDecoration(
                            color: const Color(0xFF636464),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 160, top: 5),
                    child: Text(
                      'view all',
                      style: TextStyle(
                          color: Color(0xFFa0a0a0),
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 1, color: Colors.grey.shade300),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/Cabinet.jpg',
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 7),
                          child: Text(
                            'Cabinet',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/Console.png',
                                    height: 52,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Text(
                              'Console',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/Monitor.png',
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Text(
                              'Monitor',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/headphone1.webp',
                                    height: 52,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Text(
                              'Headphones',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 23),
              child: Row(
                children: [
                  Text(
                    'Best Sellers',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 145, top: 5),
                    child: Text(
                      'view all',
                      style: TextStyle(
                          color: Color(0xFFa0a0a0),
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Wrap(
                    children: [
                      ...List.generate(
                        l1.length,
                        (index) => GestureDetector(
                            onTap: () {
                              selectedindex=index;
                                  Navigator.of(context).pushNamed('/details');
                                },
                            child: boat(
                                name: l1[index]['name'],
                                img: l1[index]['img'],
                                price: l1[index]['price'],),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container boat(
      {required String name, required String img, required int price}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
      alignment: Alignment.center,
      height: 195,
      width: 153,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 6, right: 12),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.favorite_border_rounded,
                  size: 23,
                ),
              ],
            ),
            SizedBox(
              height: 95,
              width: 100,
              child: Image.asset(
                img,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '4.2',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Icon(
                              Icons.grade_outlined,
                              color: Colors.blueGrey,
                              size: 15,
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '(476)',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8, top: 2),
                          child: Icon(
                            Icons.currency_rupee,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          price.toString(),
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
