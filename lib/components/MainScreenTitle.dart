import 'package:calendar/constants/Colors.dart';
import 'package:flutter/material.dart';

class MainScreenTitle extends StatelessWidget {

  String _title = "";

  MainScreenTitle(String title){
    this._title = title;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50,

      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColors.backgroundBottomMenu,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Text(this._title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,

        ),
      ),
    );
  }
}
