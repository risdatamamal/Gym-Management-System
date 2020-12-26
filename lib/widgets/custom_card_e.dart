import 'package:flutter/material.dart';

class CustomCardE extends StatefulWidget {
  final String eqname;
  final String category;
  final String servdate;
  final String imagePath;
  final Function func1;
  final Function func2;

  CustomCardE({
    this.eqname,
    this.category,
    this.servdate,
    this.imagePath,
    this.func1,
    this.func2,
  });
  @override
  _CustomCardEState createState() => _CustomCardEState();
}

class _CustomCardEState extends State<CustomCardE> {
  DateTime date;
  Color timeColor;
  @override
  Widget build(BuildContext context) {
    date = DateTime.parse(widget.servdate);
    if (date.isBefore(DateTime.now())) {
      timeColor = Colors.red;
    } else {
      timeColor = Colors.black;
    }
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
                  widget.imagePath,
                  width: 64.0,
                ),
              ),
              Column(
                children: [
                  Text(
                    widget.eqname,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Text(
                    'Category: ${widget.category}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                  Text(
                    'Service Date: ${widget.servdate}',
                    style: TextStyle(
                        color: timeColor,
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
                      Icons.money,
                      color: Colors.teal,
                    ),
                    tooltip: 'Service Equipment',
                    onPressed: widget.func1,
                  ),
                  Text(
                    'Service',
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
                    tooltip: 'Delete Equipment',
                    onPressed: widget.func2,
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
