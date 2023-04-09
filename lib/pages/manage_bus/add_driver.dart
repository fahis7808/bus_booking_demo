import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/widgets/common_button.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';

import '../../utils.dart';


class AddDriver extends StatelessWidget {
  const AddDriver({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration (
          color: Color(0xfff8f8f8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupz5kwJW4 (2uwfB9YafskCkb2TLaZ5kw)
              padding: EdgeInsets.fromLTRB(24.25*fem, 14.33*fem, 0*fem, 29*fem),
              width: 375.66*fem,
              decoration: BoxDecoration (
                color: Color(0xff2a2a2a),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // statusbarzNt (3:790)
                    margin: EdgeInsets.fromLTRB(10.25*fem, 0*fem, 0*fem, 38.67*fem),
                    width: 341.16*fem,
                    height: 19*fem,
                    child: CustomAppBar(),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153.16*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // iconlylightarrowleftX5J (3:863)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.25*fem, 113.25*fem, 0*fem),
                          width: 15*fem,
                          height: 12.05*fem,
                          child: Image.asset(
                            'assets/page-1/images/iconly-light-arrow-left.png',
                            width: 15*fem,
                            height: 12.05*fem,
                          ),
                        ),
                        Text(
                          // adddriverde8 (3:733)
                          'Add Driver',
                          textAlign: TextAlign.center,
                          style: safeGoogleFont (
                            'Axiforma',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.125*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // autogroupk9gwZ1z (2uwg3sb4VLQw61heYwk9Gw)
                      padding: EdgeInsets.fromLTRB(29*fem, 10*fem, 25*fem, 5*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // autogroupo9ud4zL (2uwfi3pkx7zTskizqSo9uD)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                            width: double.infinity,
                            height: 58*fem,
                            decoration: BoxDecoration (
                              color: Color(0x192a2a2a),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Enter Name',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont (
                                  'Axiforma',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2575*ffem/fem,
                                  color: Color(0xff6f6f6f),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 58*fem,
                            decoration: BoxDecoration (
                              color: Color(0x192a2a2a),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Enter License Numeber',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont (
                                  'Axiforma',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2575*ffem/fem,
                                  color: Color(0xff6f6f6f),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CommonButton(text: "Save", onTap: (){})
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}