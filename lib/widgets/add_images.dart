import 'package:flutter/material.dart';
import 'package:asyMarket/constant/decoration.dart';

class AddImages extends StatelessWidget {
  AddImages({this.height, this.width, this.onTap});
  final Function onTap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 3,
      width: width / 2 + 34,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(boxShadow: [shadow]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            iconSize: 54,
            color: Colors.grey,
            icon: Icon(Icons.add_a_photo),
            onPressed: onTap,
          ),
          SizedBox(height: 4.0),
          Text(
            'Add',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
