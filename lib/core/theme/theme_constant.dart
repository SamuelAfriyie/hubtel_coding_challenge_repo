import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: Colors.white,
  fontFamily: 'Montserrat',
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
    elevation: 3,
    showSelectedLabels: true,
    unselectedLabelStyle: TextStyle(color: Colors.white),
    selectedLabelStyle: TextStyle(color: Colors.red),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.red,
    elevation: 3,
    iconTheme: const IconThemeData(color: Colors.black),
    titleTextStyle: const TextStyle(color: Colors.black),
    centerTitle: true,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
