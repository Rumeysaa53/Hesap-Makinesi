import 'package:flutter/material.dart';

class ButtonCal extends StatelessWidget {
  final String sembol;
  final int sembolColor;
  final double textSize;
  final double fixedSizeNum;
  final Function callBack;
  final Color textColor;

  ButtonCal(
      {Key? key,
      required this.textColor,
      required this.sembol,
      required this.sembolColor,
      required this.textSize,
      required this.callBack,
      required this.fixedSizeNum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(color: Colors.white),
        primary: Color(sembolColor),
        fixedSize: Size(fixedSizeNum, 80),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: () => callBack(sembol),
      child: Text(sembol, style: TextStyle(fontSize: textSize)),
    );
  }
}

/*
ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(50)),
fixedSize: const Size(172, 80), primary: const Color(0xffFFA500)),
child: const Text('=',style: TextStyle(fontSize: 40)),
),
*/