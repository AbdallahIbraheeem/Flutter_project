import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('شراء',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}
