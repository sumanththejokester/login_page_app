import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page_app/constants.dart';

class SocalButtons extends StatelessWidget {
  const SocalButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white60,
          child: SvgPicture.asset(
            'assets/google.svg',
            color: login_bg,
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white60,
          child: SvgPicture.asset(
            'assets/facebook.svg',
            color: login_bg,
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white60,
          child: SvgPicture.asset(
            'assets/linkedin.svg',
            color: login_bg,
          ),
        )
      ],
    );
  }
}
