import 'package:flutter/material.dart';
import 'package:login_page_app/constants.dart';
import 'package:login_page_app/widgets/login_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size; //used for height and width of screen
    return Scaffold( 
      body: Stack(
        children: [
          Positioned(
            width: _size.width *0.9,
            height: _size.height,
            child: Container(
                color: login_bg,
                child: LoginForm(),
              ),
          ),
          Positioned(
            left:0,
            right:0,
            child: CircleAvatar(
              radius: 25,
            ),
          )
        ],
      ),
    );
  }
}