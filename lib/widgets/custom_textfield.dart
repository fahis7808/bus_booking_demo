import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/utils.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? value;
  final Function(String)? onChanged;

  const CustomTextField({
    Key? key,
     this.hintText,
     this.value,
     this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration (
        color: const Color(0x192a2a2a),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: safeGoogleFont (
          'Axiforma',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.2575,
          color: const Color(0xff6f6f6f),
        ),
        controller: TextEditingController(
            text: value.toString() == "null" ? "" : value.toString()),
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: Color(0x192a2a2a),
          border: InputBorder.none,
          /* border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),*/
        ),
      ),
    );
  }
}

