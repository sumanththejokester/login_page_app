import 'package:flutter/material.dart';
import '../constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Form(
        child: Column(
          children: [
            Spacer(),
            TextFormField(
              decoration:  
              InputDecoration(
                fillColor: Colors.black26,
                focusColor: Colors.black45,
                hintText: 'Email',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defpaultPadding),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.black26,
                focusColor: Colors.black45,
                  hintText: 'Password',
                  ),
              ),),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.black26,
                focusColor: Colors.black45,
                hintText: 'Confirm Password',
                ),
            ),
            Spacer(flex: 2,)
          ],
        ),),
    );
  }
}