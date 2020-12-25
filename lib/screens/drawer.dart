import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_gym_manager/authentication/authentication_service.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      child: Drawer(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          color: Palette.secondaryColor,
          child: Center(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.0),
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn1.iconfinder.com/data/icons/engineer-construction/512/engineer_worker_avatar_mechanics-256.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Developer',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Power Train Gym',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 10.0),
              Text(
                FirebaseAuth.instance.currentUser.email,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
              SizedBox(height: 10.0),
              IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                tooltip: 'Log Out of the App',
                onPressed: () => {
                  context.read<AuthenticationService>().signOut(),
                },
              ),
              Text(
                'Log Out',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
