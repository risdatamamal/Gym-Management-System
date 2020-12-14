import 'package:flutter/material.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:my_gym_manager/widgets/custom_app_bar.dart';
import 'package:my_gym_manager/widgets/custom_card_re.dart';

class RevExpScreen extends StatefulWidget {
  @override
  _RevExpScreenState createState() => _RevExpScreenState();
}

class _RevExpScreenState extends State<RevExpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar('Revenue & Expenses'),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomCardRE(
                  'assets/images/increase_presentation_Profit_growth-512.png',
                  'Incomes',
                ),
                CustomCardRE(
                    'assets/images/decrease_presentation_down_loss-512.png',
                    'Expenses'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
