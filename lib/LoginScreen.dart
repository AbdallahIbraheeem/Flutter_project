import 'package:flutter/material.dart';
import 'home_screen.dart';
// import register screen

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول',
        style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'AG مرحبا بك في ',
            ),
            // Add login form fields here
            ElevatedButton(
              onPressed: () {
                // Navigate to register screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text('تسجيل الدخول'),
            ),
            Text(
              'تسجيل ',
            ),
          ],
        ),
      ),
    );
  }
}
