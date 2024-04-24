import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'LoginScreen.dart';
import 'authentication.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AG Store',
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.deepPurple),

      ),

      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthenticationBloc()),
        ],
        child: LoginScreen(),
      ),
    );
  }
}
