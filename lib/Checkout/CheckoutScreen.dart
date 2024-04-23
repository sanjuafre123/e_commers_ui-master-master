import 'package:e_commers_ui/utils/imglist.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Checkout',
          ),
        ),
        body: Container(
          height: double.infinity,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.black87,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      'Ammount',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Text(
                    '$Ammount',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      'Gst :',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Text(
                    '$Ammount',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      'Total',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Text(
                    '$Total',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
