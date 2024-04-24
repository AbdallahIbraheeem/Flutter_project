import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_screen.dart';
import 'main_screen.dart'; // import home screen

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'مرحبًا بك في صفحة التسجيل',
            ),
            // Add registration form fields here
            ElevatedButton(
              onPressed: () {
                // Register user
                // Show dialog box confirming registration
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("تم التسجيل"),
                      content: Text("لقد تم تسجيل الدخول بنجاح"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("حسنًا"),
                        ),
                      ],
                    );
                  },
                );
                // Save registration data to local database
                // Redirect user to home screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('تسجيل'),
            ),
          ],
        ),
      ),
    );
  }
}
