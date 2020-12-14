import 'package:flutter/material.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:my_gym_manager/widgets/custom_app_bar.dart';

class AddMembers extends StatefulWidget {
  @override
  _AddMembersState createState() => _AddMembersState();
}

class _AddMembersState extends State<AddMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(Icons.arrow_back_ios, () {
        Navigator.pop(context);
      }, 'Add Members'),
    );
  }
}
