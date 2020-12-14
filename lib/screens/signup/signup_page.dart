import 'package:flutter/material.dart';
import 'package:my_gym_manager/animation/fade_animation.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:my_gym_manager/widgets/make_input.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xFFF1F9FD),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    FadeAnimation(
                      1.0,
                      Text(
                        'SIGNUP',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeAnimation(
                      1.2,
                      Text(
                        'Create an account for your GYM...',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    FadeAnimation(
                      1.3,
                      MakeInput(
                        label: 'Email',
                        obscureText: false,
                      ),
                    ),
                    FadeAnimation(
                      1.4,
                      MakeInput(
                        label: 'Password',
                        obscureText: true,
                      ),
                    ),
                    FadeAnimation(
                      1.5,
                      MakeInput(
                        label: 'Confirm Password',
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
                FadeAnimation(
                  1.6,
                  Container(
                    padding: EdgeInsets.only(
                      top: 3.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                        ),
                        top: BorderSide(
                          color: Colors.black,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60.0,
                      onPressed: () {},
                      color: Colors.purple[200],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                FadeAnimation(
                  1.7,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
