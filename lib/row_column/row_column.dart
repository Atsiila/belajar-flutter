import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Container(
          color: Colors.red,
          child : Text('ini column 1')),
           Container(
          color: Colors.red,
          child : Text('ini row 2')),
           
        ],
        ),
         Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          color: Colors.red,
          child : Text('ini column 1')),
          Container(
          color: Colors.red,
          child : Text('ini column 1')),
          Container(
          color: Colors.red,
          child : Text('ini column 1')),
      ],
      ),
       Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Container(
            child: Text('ini column 1'),
            color: Colors.red,
          ),
          Container(
            child: Text('ini column 2'),
            color: Colors.red,
          ),
          ],
         ),
      ],
      );
      
  }
}