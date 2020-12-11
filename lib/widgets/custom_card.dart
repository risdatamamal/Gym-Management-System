import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  CustomCard(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8.0),
      color: Colors.grey[350],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Image.asset(
                  imagePath,
                  width: 64.0,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Santha Rajapaksha',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Text(
                    'ID: 1998',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  Text(
                    'Mobile: 0771234567',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                  Text(
                    'Plan Expiry: 2021-01-25',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                  Text(
                    'Due Amount: Rs. 2000.00',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ],
              ),
              Flexible(
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  tooltip: 'More Details',
                  onPressed: () => {},
                ),
              ),
            ],
          ),
          Divider(color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.teal,
                    ),
                    tooltip: 'Call Member',
                    onPressed: () => {},
                  ),
                  Text(
                    'Call',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.message,
                      color: Colors.teal,
                    ),
                    tooltip: 'Message Member',
                    onPressed: () => {},
                  ),
                  Text(
                    'Message',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.money,
                      color: Colors.teal,
                    ),
                    tooltip: 'Renew Fees',
                    onPressed: () => {},
                  ),
                  Text(
                    'Renew',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    tooltip: 'Delete Member',
                    onPressed: () => {},
                  ),
                  Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
