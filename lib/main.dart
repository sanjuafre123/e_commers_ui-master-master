import 'package:e_commers_ui/home/HomeScreen.dart';
import 'package:e_commers_ui/splace/Spalace_Screen.dart';
import 'package:flutter/material.dart';

import 'Cart_Screen/Cart_info.dart';
import 'Checkout/CheckoutScreen.dart';
import 'details/details_screen.dart';


void main() {
  runApp(const Gaming());
}

class Gaming extends StatelessWidget {
  const Gaming({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => splacescreen(),
        '/home': (context) => homeScreen(),
        '/details': (context) => detailScreen(),
        '/cart' : (context) => CartScreen(),
        '/Check' : (context)=> CheckoutScreen(),
      },
    );
  }
}

