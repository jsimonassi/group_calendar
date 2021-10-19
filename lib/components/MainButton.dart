import 'dart:ffi';

import 'package:calendar/constants/Colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {

  String _title = "";
  late VoidCallback _callback;

  MainButton(String title, VoidCallback callback){
    this._title = title;
    this._callback = callback;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 45,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              AppColors.backgroundMainButton1,
              AppColors.backgroundMainButton2
            ], // red to yellow
          ),
        ),
        child: TextButton(
          onPressed: this._callback,
          child: Text(
            this._title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
        )
    );
  }
}
