import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/utils.dart';
import 'package:ksrtc_booking_demo/widgets/common_button.dart';


class BusCard extends StatelessWidget {
  final String busName;
  final String? busImage;
  final Function() onTap;
  const BusCard({Key? key, required this.busName, this.busImage, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 13),
      padding: const EdgeInsets.fromLTRB(0, 0, 19, 0),
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration (
        border: Border.all(color: const Color(0xffc1c1c1)),
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x56d4d4d4),
            offset: Offset(1, 4),
            blurRadius: 3.5,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 14.5, 0),
            padding: const EdgeInsets.fromLTRB(8.5, 17.5, 8.5, 17.5),
            height: double.infinity,
            decoration: const BoxDecoration (
              color: Color(0xfff3f3f3),
              borderRadius: BorderRadius.only (
                topLeft: Radius.circular(9),
                bottomLeft: Radius.circular(9),
              ),
            ),
            child: Center(
              // image34At (3:119)
              child: SizedBox(
                width: 62,
                height: 38,
                child: Image.asset(
                  busImage ?? 'assets/page-1/images/image-3-rZE.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            // ksrtcswiftscaniapseriesNSU (3:120)
            margin: const EdgeInsets.fromLTRB(0, 4, 49, 0),
            constraints: const BoxConstraints (
              maxWidth: 103,
            ),
            child: Text(
             busName,
              style: safeGoogleFont (
                'Axiforma',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: const Color(0xff474747),
              ),
            ),
          ),
          CommonButton(text: "Manage", textSize: 14,width: 80,height: 40,onTap: onTap,)
        ],
      ),
    );
  }
}
