import 'package:flutter/material.dart';
import 'package:my_gym_manager/screens/signup_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans-Regular',
        scaffoldBackgroundColor: const Color(0xFFF1F9FD),
      ),
      home: SignupPage(),
    ),
  );
}
