import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cupid/InitialStates.dart';
import 'package:project1/cupid/bottom_nav_bar.dart';
import 'package:project1/product_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>NewCubit(),
      child: BlocConsumer<NewCubit,NewStates>(
        listener: (context,state){},
        builder: (context,state){
          var cubit = NewCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('AG',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                ),),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.changeBottomNavBar(index);
              },
              items: cubit.bottomItems,
            ),
            body: Container(
              color: Colors.white,
              child: cubit.screen[cubit.currentIndex],
            ),

          );
        },
      ),
    );
  }
}
