import 'package:flutter/material.dart';

import '../utils.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // timey2Y (3:853)
          margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
          child: Text(
            '9:41',
            textAlign: TextAlign.center,
            style: safeGoogleFont (
              'SF Pro Text',
              fontSize: 15,
              fontWeight: FontWeight.w600,
              height: 1.2575,
              letterSpacing: -0.3000000119,
              color: const Color(0xffffffff),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              // cellularconnectioncbJ (3:847)
              margin: const EdgeInsets.fromLTRB(0, 0, 5, 1.67),
              width: 17,
              height: 10.67,
              child: Image.asset(
                'assets/page-1/images/cellular-connection.png',
                width: 17,
                height: 10.67,
              ),
            ),
            Container(
              // wifiu4c (3:843)
              margin: const EdgeInsets.fromLTRB(0, 0, 5, 2.01),
              width: 15.33,
              height: 11,
              child: Image.asset(
                'assets/page-1/images/wifi-y7E.png',
                width: 15.33,
                height: 11,
              ),
            ),
            Container(
              // batteryRHr (3:839)
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 1.67),
              width: 24.33,
              height: 11.33,
              child: Image.asset(
                'assets/page-1/images/battery-KtL.png',
                width: 24.33,
                height: 11.33,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
