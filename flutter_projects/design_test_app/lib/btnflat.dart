import 'package:flutter/material.dart';

FlatButton buildFlatButton(String btnTitle, IconData btnIcon, num btnWidth) {
  return FlatButton(
    onPressed: () {
      //not implemented yet
    },
    child: Container(
      height: 50,
      width: btnWidth,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            btnIcon,
            color: Colors.white,
            size: 20,
          ),
          Text(
            btnTitle,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
