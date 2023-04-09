import 'package:flutter/material.dart';
import 'package:ksrtc_booking_demo/widgets/cardWidget/driver_card.dart';
import 'package:ksrtc_booking_demo/widgets/custom_appbar.dart';
import 'package:ksrtc_booking_demo/widgets/cardWidget/seat.dart';

import '../../utils.dart';


class BusSeat2 extends StatelessWidget {
  const BusSeat2({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // tdE (3:153)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogrouppebdp16 (2uwgsgYjNjYmezHvTGPEbD)
                // margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27.96*fem),
                width: double.infinity,
                height: 120,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle2XgC (3:155)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 375*fem,
                          height: 119*fem,
                          child: Container(
                            decoration: const BoxDecoration (
                              color: Color(0xff2a2a2a),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ksrtcswiftscaniapseriesJMW (3:231)
                      left: 95.5*fem,
                      top: 72*fem,
                      child: Align(
                        child: SizedBox(
                          width: 184*fem,
                          height: 18*fem,
                          child: Text(
                            'KSRTC Swift Scania P-​series\n',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Axiforma',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.125*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // iconlylightarrowleftMqa (3:738)
                      left: 24.2497558594*fem,
                      top: 73.2496948242*fem,
                      child: Align(
                        child: SizedBox(
                          width: 15*fem,
                          height: 12.05*fem,
                          child: Image.asset(
                            'assets/page-1/images/iconly-light-arrow-left-kP2.png',
                            width: 15*fem,
                            height: 12.05*fem,
                          ),
                        ),
                      ),
                    ),
                    const CustomAppBar()
                  ],
                ),
              ),
              const DriverCard(driverName: "Rohit Sharma",
                licenseNo: 'PJ515196161655',
                image: 'assets/page-1/images/mask-group-mFN.png',
              ),
              const SizedBox(height: 25,),
              Expanded(
                child: Container(
                  // autogroup31kpmgL (2uwhEWHNKTMRzCcVFJ31kP)
                  margin: EdgeInsets.fromLTRB(46*fem, 0*fem, 44*fem, 0*fem),
                  padding: EdgeInsets.fromLTRB(38*fem, 30*fem, 38*fem, 5*fem),
                  width: double.infinity,
                  height: 487*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xffdbdbdb)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(13*fem),
                  ),
                  child: SizedBox(
                    // group21f12 (3:361)
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 70*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    blackSeat(),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5,)
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: 8,
                              itemBuilder: (BuildContext context,int index){
                                return Column(
                                  children: [
                                    SizedBox  (
                                      // group13Kmi (3:241)
                                      width: double.infinity,
                                      height: 22*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              redSeat(),
                                            ],
                                          ),
                                          const SizedBox(width: 70,),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              redSeat(),
                                              const SizedBox(width: 11,),
                                              redSeat(),
                                              const SizedBox(width: 11,),
                                              redSeat()
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 22*fem,
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
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