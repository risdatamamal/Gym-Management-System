import 'package:flutter/material.dart';
import 'package:my_gym_manager/config/palette.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String screenTitle;
  CustomAppBar(this.screenTitle);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
      title: Text(screenTitle),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        iconSize: 28.0,
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none),
          iconSize: 28.0,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
