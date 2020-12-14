import 'package:flutter/material.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:my_gym_manager/widgets/custom_app_bar.dart';
import 'package:my_gym_manager/widgets/custom_card_re.dart';

import 'add_income.dart';

class IncExpScreen extends StatefulWidget {
  @override
  _IncExpScreenState createState() => _IncExpScreenState();
}

class _IncExpScreenState extends State<IncExpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(Icons.menu, () {}, 'Revenue & Expenses'),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomCardRE(
                    'assets/images/increase_presentation_Profit_growth-512.png',
                    'Incomes',
                    () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddIncome(),
                            ),
                          ),
                        },
                    () => {}),
                CustomCardRE(
                    'assets/images/decrease_presentation_down_loss-512.png',
                    'Expenses',
                    () => {},
                    () => {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
