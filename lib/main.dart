import 'package:flutter/material.dart';
import 'package:login_page_app/auth_screen.dart';
import 'constants.dart';

void main(){
  runApp(login_page_app());
}

class login_page_app extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white38,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(
            vertical: defpaultPadding * 1.2, horizontal: defpaultPadding),
        ),
      ),
      home: AuthScreen(),
    );
  }
}