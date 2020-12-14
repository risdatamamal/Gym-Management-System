import 'package:flutter/material.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:my_gym_manager/widgets/custom_app_bar.dart';
import 'package:my_gym_manager/widgets/make_input.dart';

class AddEquipments extends StatefulWidget {
  @override
  _AddEquipmentsState createState() => _AddEquipmentsState();
}

class _AddEquipmentsState extends State<AddEquipments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(Icons.arrow_back_ios, () {
        Navigator.pop(context);
      }, 'Add Equipments'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Palette.secondaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        child: Center(
                          child: Text(
                            'Enter Details',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MakeInput(
                      label: 'Equipment Name',
                      obscureText: false,
                    ),
                    MakeInput(
                      label: 'Category',
                      obscureText: false,
                    ),
                    MakeInput(
                      label: 'Bought Date',
                      obscureText: false,
                    ),
                    MakeInput(
                      label: 'Service Terms',
                      obscureText: false,
                    ),
                    MakeInput(
                      label: 'Date of Last Service',
                      obscureText: false,
                    ),
                    MakeInput(
                      label: 'Next Service Date',
                      obscureText: false,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Palette.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: FlatButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddEquipments(),
                      ),
                    ),
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      Text(
                        'Confirm Details',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
