import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/Screens/buying_screen.dart';
import 'package:project1/Screens/settings.dart';
import 'package:project1/Screens/shopping_screen.dart';

import 'InitialStates.dart';

class NewCubit extends Cubit<NewStates>{
  NewCubit():super (NewInitialStates());
static NewCubit get (context) => BlocProvider.of(context);
  int currentIndex=0;
List<BottomNavigationBarItem> bottomItems = [
  BottomNavigationBarItem(
      icon: Icon(
      Icons.shopping_bag_outlined),
      label: 'التسوق',
  ),
  BottomNavigationBarItem(
    icon: Icon(
        Icons.shopping_cart_checkout_outlined),
    label: 'الشراء',
  ),
  BottomNavigationBarItem(
    icon: Icon(
        Icons.settings),
    label: 'الاعدادات',
  ),];

List<Widget> screen = [
  ShoppingScreen(),
  BuyScreen(),
  SettingsScreen(),
];
void changeBottomNavBar(int index){
  currentIndex = index;
  emit(NewsBottomNav());
}

}