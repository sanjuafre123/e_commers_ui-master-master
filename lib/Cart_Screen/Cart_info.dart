import 'package:e_commers_ui/Checkout/CheckoutScreen.dart';
import 'package:e_commers_ui/details/details_screen.dart';
import 'package:e_commers_ui/utils/imglist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          for(int i=0; i<Cartlist.length; i++)
            {
              Count=(Count+Cartlist[i]['qut']).toInt();
              Ammount = Ammount + Cartlist[i]['price'];

            }
          Total = ((Ammount * 18 )/100)+ Ammount;
          Navigator.of(context).pushNamed('/Check');
        },
        child: BottomAppBar(
          height: 70,
          color: Colors.grey.shade800,
          child: Container(
            alignment: Alignment.center,
            height: 20,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('CheckOut',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.white,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w300, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(Cartlist.length, (index) => cartContainer(index)),
          ],
        ),
      ),
    );
  }

  Column cartContainer(int index) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          height: 200,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 24, left: 10),
                height: 145,
                width: 110,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset(
                  Cartlist[index]['img'],
                  height: 110,
                  width: 85,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 22),
                    child: Text(
                      Cartlist[index]['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.teal),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 70, top: 6),
                    height: 18,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '15%OFF',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 4, top: 10),
                        child: const Text(
                          'MRP Rs.12,200.00',
                          style: TextStyle(
                            fontSize: 13,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: Column(
                      children: [
                        Text(
                          'Rs. ${Cartlist[index]['price']}/-',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 68, top: 9, bottom: 25),
                    height: 17,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(6)),
                    alignment: Alignment.center,
                    child: const Text(
                      'In Stock',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
          height: 70,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 45,
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 43,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(9),
                          bottomLeft: Radius.circular(9),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if(Cartlist[index]['qut']>1){
                              Cartlist[index]['qut']--;
                            }
                          });
                        },
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                    ),
                     Text(
                       Cartlist[index]['qut'].toString(),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 43,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(9),
                              bottomRight: Radius.circular(9))),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Cartlist[index]['qut']++;
                          });
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Cartlist.removeAt(index);
                  });
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(125, 0, 0, 0),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
