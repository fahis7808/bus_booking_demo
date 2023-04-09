import 'package:flutter/material.dart';

import '../../utils.dart';

class DriverCard extends StatelessWidget {
  final String? image;
  final String? driverName;
  final String? licenseNo;
  const DriverCard({Key? key, this.image, this.driverName, this.licenseNo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 147.04,
      child: Stack(
        children: [
          Positioned(
            // rectangle8ZMz (3:224)
            left: 0,
            top: 31,
            child: Align(
              child: SizedBox(
                width: 335,
                height: 116,
                child: Container(
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff2a2a2a),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // maskgroupGXJ (3:225)
            left: 181,
            top: 0,
            child: Align(
              child: SizedBox(
                width: 132,
                height: 147.04,
                child: Image.asset(
                  image ?? 'assets/page-1/images/mask-group-mFN.png',
                  width: 132,
                  height: 147.04,
                ),
              ),
            ),
          ),
          Positioned(
            // rohitsharmamix (3:228)
            left: 22,
            top: 54,
            child: Align(
              child: SizedBox(
                width: 145,
                height: 33,
                child: Text(
                  driverName ?? '',
                  style: safeGoogleFont (
                    'Axiforma',
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    height: 1.2575,
                    letterSpacing: -0.78,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // licensenopj515196161655EMe (3:229)
            left: 23,
            top: 97,
            child: Align(
              child: SizedBox(
                width: 110,
                height: 13,
                child: Text(
                  'License no: ${licenseNo ?? ''}',
                  style: safeGoogleFont (
                    'Axiforma',
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    height: 1.2575,
                    letterSpacing: -0.3,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
