import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:ksrtc_booking_demo/widgets/common_button.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';
import 'dart:ui';

import '../../utils.dart';


class BusDriverList extends StatelessWidget {
  const BusDriverList({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // WwA (3:607)
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Color(0xfff8f8f8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // autogroupzf6tSpp (2uwbfv3tGCcZ3EYNnwZF6T)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                padding: EdgeInsets.fromLTRB(24.25*fem, 14.33*fem, 13.34*fem, 29*fem),
                width: double.infinity,
                decoration: const BoxDecoration (
                  color: Color(0xff2a2a2a),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // statusbaruyJ (3:931)
                      margin: EdgeInsets.fromLTRB(10.25*fem, 0*fem, 0*fem, 38.67*fem),
                      child: const CustomAppBar()
                    ),
                    Container(
                      // autogroupek3dshA (2uwbqQn4cWkNgJJa2yEk3D)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140.66*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // iconlylightarrowlefto52 (3:859)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.25*fem, 114.75*fem, 0*fem),
                            width: 15*fem,
                            height: 12.05*fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-light-arrow-left-fSx.png',
                              width: 15*fem,
                              height: 12.05*fem,
                            ),
                          ),
                          Text(
                            // driverlisttsA (3:727)
                            'Driver List',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Axiforma',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.125*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // driversfoundEAL (3:625)
                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 0*fem),
                child: Text(
                  '21 Drivers Found',
                  style: safeGoogleFont (
                    'Axiforma',
                    fontSize: 13*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2575*ffem/fem,
                    color: const Color(0xff6b6b6b),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // autogrouphfphwKe (2uwcK4eeps11fN8tXchFPH)
                  padding: EdgeInsets.fromLTRB(18*fem, 0*fem, 22*fem, 0*fem),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: ListView.builder(
                          itemCount: 21,
                          itemBuilder: (BuildContext context,int index){
                            return Container(
                              // group437n (3:964)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                              padding: EdgeInsets.fromLTRB(1*fem, 0*fem, 19*fem, 0*fem),
                              width: double.infinity,
                              height: 74*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: const Color(0xffc1c1c1)),
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(10*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x56d4d4d4),
                                    offset: Offset(1*fem, 4*fem),
                                    blurRadius: 3.5*fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogrouphqsh4Hn (2uwcePRnfKjPK9SahrHqsH)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 1*fem),
                                    padding: EdgeInsets.fromLTRB(16*fem, 14*fem, 17*fem, 13*fem),
                                    width: 79*fem,
                                    decoration: BoxDecoration (
                                      color: const Color(0xfff3f3f3),
                                      borderRadius: BorderRadius.only (
                                        topLeft: Radius.circular(9*fem),
                                        bottomLeft: Radius.circular(9*fem),
                                      ),
                                    ),
                                    child: Center(
                                      // ellipseXhA (3:972)
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 46*fem,
                                        child: Container(
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(23*fem),
                                            image: const DecorationImage (
                                              fit: BoxFit.cover,
                                              image: AssetImage (
                                                'assets/page-1/images/ellipse-bg-UxY.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // rohitsharmalicnnopj5151961616F (3:967)
                                    margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 40*fem, 0*fem),
                                    constraints: BoxConstraints (
                                      maxWidth: 113*fem,
                                    ),
                                    child: Text(
                                      'Rohit sharma\nLicn no: PJ5151961616',
                                      style: safeGoogleFont (
                                        'Axiforma',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5*ffem/fem,
                                        color: const Color(0xff474747),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // group2vjJ (3:968)
                                    margin: EdgeInsets.fromLTRB(0*fem, 22*fem, 0*fem, 22*fem),
                                    width: 70*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(4*fem),
                                    ),
                                    child: Container(
                                      // group3SxY (3:969)
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: const Color(0xfffc153b),
                                        borderRadius: BorderRadius.circular(4*fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Delete',
                                          textAlign: TextAlign.center,
                                          style: safeGoogleFont (
                                            'Axiforma',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            letterSpacing: -0.3*fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                      })),
                 Container(
                     padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                     child: CommonButton(text: "Add Driver", onTap: (){

                     }))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}