import 'package:flutter/material.dart';
import 'package:my_gym_manager/animation/fade_animation.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        FadeAnimation(
                          1.0,
                          Text(
                            'LOGIN',
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
                            'Login to your GYM',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        children: [
                          FadeAnimation(
                            1.3,
                            makeInput(
                              lable: 'Email',
                            ),
                          ),
                          FadeAnimation(
                            1.4,
                            makeInput(
                              lable: 'Password',
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    FadeAnimation(
                      1.5,
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.0,
                        ),
                        child: Container(
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
                            color: Color(0xFFC9C7F1),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(50.0)),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FadeAnimation(
                      1.6,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account? ',
                          ),
                          Text(
                            'Sign up',
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
              FadeAnimation(
                1.7,
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/gym_club_fitness_center-512.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeInput({lable, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: 10.0,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[400],
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[400],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
