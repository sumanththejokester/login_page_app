import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page_app/constants.dart';
import 'package:login_page_app/widgets/login_form.dart';
import 'package:login_page_app/widgets/socal_buttons.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size =
        MediaQuery.of(context).size; //used for height and width of screen
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: _size.width * 0.9,
            height: _size.height,
            child: Container(
              color: login_bg,
              child: LoginForm(),
            ),
          ),
          Positioned(
            top: _size.height * 0.1,
            left: 0,
            right: _size.height * 0.045,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white60,
              child: SvgPicture.asset(
                'assets/loginlogo.svg',
                color: login_bg,
              ),
            ),
          ),
          Positioned(
              width: _size.width,
              bottom: _size.height * 0.1,
              right: _size.width * 0.045,
              child: SocalButtons()),
        ],
      ),
    );
  }
}
