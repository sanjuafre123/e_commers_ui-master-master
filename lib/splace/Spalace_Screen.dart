import 'dart:async';

import 'package:e_commers_ui/home/HomeScreen.dart';
import 'package:flutter/material.dart';

class splacescreen extends StatefulWidget {
  const splacescreen({super.key});

  @override
  State<splacescreen> createState() => _splacescreenState();
}

class _splacescreenState extends State<splacescreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homeScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 790,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0f0f0f),
                  Color(0xFF0f0f0f),
                ],
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft,
              )
            ),
            child: Container(
              height: 400,
              width: 400,
              child: Image.asset('assets/splace/gaminglogo.png',height: 5,width: 5,),
            ),
          ),
        ],
      ),
    );
  }
}
