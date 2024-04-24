import 'package:flutter/material.dart';

class AddProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إضافة منتج'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'مرحبًا بك في صفحة إضافة المنتج',
            ),
            // Add product form fields here
            ElevatedButton(
              onPressed: () {
                // Add product logic
              },
              child: Text('إضافة المنتج'),
            ),
          ],
        ),
      ),
    );
  }
}
