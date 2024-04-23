import 'package:flutter/material.dart';

import '../utils/imglist.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey.shade100,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Sony Dualsense PS5',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(
                                width: 2.5, color: Colors.grey.shade200))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              height: 20,
                              width: 56,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                  child: Text('15% OFF',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600))),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 240),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.teal,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                l1[selectedindex]['img'],
                                height: 250,
                                width: 250,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.share,
                                size: 25,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 100, top: 25),
                                    height: 5,
                                    width: 28,
                                    decoration: BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 3, top: 25),
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 4, top: 25),
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 4, top: 25),
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 4, top: 25),
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 352,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 25, top: 18),
                        child: Text(
                          l1[selectedindex]['name'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 40),
                        child: const Text(
                          'Edge Wireless Controller fine tune your\naim by adjusting stick',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF909090)),
                        ),
                      ),
                      const SizedBox(height: 7),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 25),
                            child: const Text(
                              '4.8',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 2),
                            child: const Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 1),
                            child: const Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 1),
                            child: const Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 1),
                            child: Icon(
                              Icons.star_border,
                              size: 20,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 2),
                            child: const Text(
                              '(476)',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 26),
                        child: Row(
                          children: [
                            Text(
                              'Rs. ${l1[selectedindex]['price']}/-',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 25, right: 25),
                            height: 100,
                            width: 310,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, top: 10),
                                      child: Icon(
                                        Icons.local_offer,
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: const Text(
                                        '  Bank Offers',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: const Row(
                                    children: [
                                      Text(
                                        'Get 7.5%  discount on shopping with SBI\ncredit card Get max up to Rs.150 offer',
                                        style: TextStyle(
                                          color: Color(0xFFa9a9a9),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 4),
                                height: 61,
                                width: 353,
                                decoration: BoxDecoration(
                                  color: Colors.black87,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    bool status = false;
                                    int index = 0;
                                    for (int i = 0; i < Cartlist.length; i++) {
                                      if (Cartlist[i]['name'] ==
                                          l1[selectedindex]['name']) {
                                        index = i;
                                        status = true;
                                      }
                                    }
                                    if (status) {
                                      Cartlist[index]['qut']++;
                                    } else {
                                      Cartlist.add(l1[selectedindex]);
                                    }
                                    Navigator.of(context).pushNamed('/cart');
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

int selectedindex = 0;
