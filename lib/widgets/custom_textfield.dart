import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      // autogroupfbnjkw2 (2uwVv5e8tzpWzXrii8fbNj)
      margin: const EdgeInsets.fromLTRB(0, 0, 6, 17),
      width: 321,
      height: 58,
      decoration: BoxDecoration (
        color: const Color(0x192a2a2a),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Enter Username',
          textAlign: TextAlign.center,
          style: safeGoogleFont (
            'Axiforma',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            height: 1.2575,
            color: const Color(0xff6f6f6f),
          ),
        ),
      ),
    );
  }
}
