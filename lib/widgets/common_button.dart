import 'package:flutter/material.dart';

import '../utils.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color? color;
  final Color? textColor;
  final double? textSize;
  final double? width;
  final double? height;
  const CommonButton({Key? key, required this.text, required this.onTap, this.color, this.textColor, this.textSize, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
              width:width ?? 316,
              height:height ?? 58,
              decoration: BoxDecoration (
                color:color ?? const Color(0xfffc153b),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: safeGoogleFont (
                    'Axiforma',
                    fontSize:textSize ?? 20,
                    fontWeight: FontWeight.w500,
                    height: 1.2575,
                    color:textColor  ??  const Color(0xffffffff)
                  ),
                ),
              ),
            ),
    );
  }
}

