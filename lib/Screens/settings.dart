import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('الاعدادات',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}
