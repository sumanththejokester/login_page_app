import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page_app/constants.dart';
import 'package:login_page_app/widgets/login_form.dart';
import 'package:login_page_app/widgets/sign_up_form.dart';
import 'package:login_page_app/widgets/socal_buttons.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isShowSignUp = false;
  @override
  Widget build(BuildContext context) {
    final _size =
        MediaQuery.of(context).size; //used for height and width of screen
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: defaultDuration,
            width: _size.width * 0.9,
            height: _size.height,
            left: _isShowSignUp ? -_size.width * 0.8: 0 ,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  _isShowSignUp = !_isShowSignUp;
                });
              },
              child: Container(
                color: login_bg,
                child: LoginForm(),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: defaultDuration,
            height: _size.height,
            width: _size.width * 0.9,
            left: _isShowSignUp ? _size.width * 0.1:_size.width * 0.9,
            child: Container(
              color: signup_bg,
              child: SignUpForm(),
              ),
            ),
          AnimatedPositioned(
            duration: defaultDuration,
            top: _size.height * 0.1,
            left: 0,
            right: _isShowSignUp ? -_size.width * 0.05 : _size.width * 0.05,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white60,
              child: SvgPicture.asset(
                'assets/loginlogo.svg',
                color: login_bg,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: defaultDuration,
              width: _size.width,
              bottom: _size.height * 0.1,
              right: _size.width * 0.05,
              child: SocalButtons()),
        ],
      ),
    );
  }
}
